-- =============================================
-- Author:		Paul McLeod
-- Create date: November 21, 2011
-- Description:	Logs the finish of a build step process
-- =============================================
CREATE PROCEDURE [build].[proc_LogBuildStepEnd]
	(
	 @BuildLogID int output,
	 @Build_OK bit,
	 @Error_Message varchar(max)
 
	)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE
		@BuildStatusID int,
		@TableSchema varchar(50),
		@TableName varchar(50)
	
	Select 
		@BuildStatusID = PK_BuildStatusID 
	From Data.dim_BuildStatus
	Where 
		(BuildStatus_Code = 'BUILD_FINISH' and @Build_OK = 1) or
		(BuildStatus_Code = 'BUILD_ERROR' and @Build_OK = 0)
		
DECLARE
		@RecordCount integer,
		@InsertCount integer,
		@UpdateCount integer,
		@SQLStatement varchar(250),
		@BuildID integer
		
		-- Initialise variables
		Select
			@RecordCount = 0
			
		Select 
			@TableSchema = Table_Schema,
			@TableName = Table_Name,
			@BuildID = FK_BuildID
		From Build.tbl_BuildLog Where PK_BuildLogID = @BuildLogID
		
		If Exists(Select t.name from sys.schemas s Inner Join sys.tables t on s.schema_id = t.schema_id where s.name = @TableSchema and t.name = @TableName)
		Begin
			Declare
				@tmp Table (RecCount int)

			Select @SQLStatement = 'Select Count(*) From ['+@TableSchema+'].['+@TableName+']'

			insert Into @tmp
			Exec (@SQLStatement)

			Select @RecordCount = RecCount from @tmp
		End
		
	--JVK NOV 04 2014 - count the inserted records
		-- Initialise variables
		Select
			@InsertCount = 0
		IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS
				WHERE TABLE_SCHEMA = @TableSchema and TABLE_NAME = @TableName AND COLUMN_NAME = 'CreateDate')
		BEGIN
		Declare
				@tmp1 Table (RecCount int)

			Select @SQLStatement = 'Select Count(*) From ['+@TableSchema+'].['+@TableName+']'+ ' Where FK_BuildID = ' + cast(@BuildID as varchar) + ' AND CreateDate IS NOT NULL AND UpdateDate IS NULL'

			insert Into @tmp1
			Exec (@SQLStatement)

			Select @InsertCount = RecCount from @tmp1
		END
		
--JVK NOV 04 2014 - count the updated records
		-- Initialise variables
		Select
			@UpdateCount = 0
			
		IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS
				WHERE TABLE_SCHEMA = @TableSchema and TABLE_NAME = @TableName AND COLUMN_NAME = 'UpdateDate')
		BEGIN
		Declare
				@tmp2 Table (RecCount int)

			Select @SQLStatement = 'Select Count(*) From ['+@TableSchema+'].['+@TableName+']'+ ' Where FK_BuildID = ' + cast(@BuildID as varchar) + ' AND UpdateDate IS NOT NULL'

			insert Into @tmp2
			Exec (@SQLStatement)

			Select @UpdateCount = RecCount from @tmp2
		END
 
		
	UPDATE [Build].[tbl_BuildLog]
		Set 
			FK_BuildStatusID = @BuildStatusID,
			Records_End = @RecordCount,
			Records_Processed = @RecordCount - Records_Before,
			Records_Inserted = @InsertCount, --JVK NOV 04 2014 Added
			Records_Updated = @UpdateCount, --JVK NOV 04 2014 Added
			[Error_Message] = @Error_Message,
			BuildEnd = GETDATE()
			
		Where 
			PK_BuildLogID = @BuildLogID
END
;