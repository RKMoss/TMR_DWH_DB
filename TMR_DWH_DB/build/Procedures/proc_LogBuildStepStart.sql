-- =============================================
-- Author:		Paul McLoed
-- Create date:	November, 2011
-- Description:	Logs start of a build step process
-- =============================================
CREATE PROCEDURE [build].[proc_LogBuildStepStart]
	(
	 @BuildLogID int output,
	 @BuildID int,
	 @TableSchema varchar(50),
	 @TableName varchar(50),
	 @Build_Group_Label varchar(50),
	 @Build_Step_Label varchar(50)
	)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE
		@BuildStatusID int
	
	Select @BuildStatusID = PK_BuildStatusID 
	From Data.dim_BuildStatus
	Where BuildStatus_Code = 'BUILD_START'
	
	
	-- If we are passed in an empty build number then create a new build record and pass back
	If ISNULL(@BuildID,0) <=0
	begin
		-- Create a new build record
		Insert Into Build.tbl_Build (FK_BuildStatusID,BuildLabel,Build_Start,Build_End)
			Values(@BuildStatusID,'AdHoc Build',GETDATE(),NULL)
		-- Get the key from record that was just created
		-- This will be passed back to be used for other build
		-- Steps in the process if necesssary
		Select @BuildID = IDENT_CURRENT('Build.tbl_Build')
	end	

	--===================================================--
	-- Now let's look up the 'Before Build' record count --
	--===================================================--
	DECLARE
		@RecordCount integer,
		@SQLStatement varchar(250)
		
		Declare
			@tmp Table (RecCount int)

		-- Initialise variables
		Select
			@RecordCount = 0
		
		If Exists(Select t.name from sys.schemas s Inner Join sys.tables t on s.schema_id = t.schema_id where s.name = @TableSchema and t.name = @TableName)
		Begin
			Select @SQLStatement = 'Select Count(*) From ['+@TableSchema+'].['+@TableName+']'
			insert Into @tmp
			Exec (@SQLStatement)

			Select @RecordCount = RecCount from @tmp
		End
		
	INSERT INTO [Build].[tbl_BuildLog]
			   (
				[FK_BuildID]
			   ,[FK_BuildStatusID]
			   ,[Build_Group_Label]
			   ,[Build_Step_Label]
			   ,[Table_Schema]
			   ,[Table_Name]
			   ,[BuildStart]
			   ,[Records_Before]
			   )
		 VALUES
			   (
				@BuildID
			   ,@BuildStatusID
			   ,@Build_Group_Label
			   ,@Build_Step_Label
			   ,IsNull(@TableSchema,'')
			   ,IsNull(@TableName,'')
			   ,GETDATE()
			   ,@RecordCount
			   )

		Select @BuildLogID = IDENT_CURRENT('Build.tbl_BuildLog')

END
;