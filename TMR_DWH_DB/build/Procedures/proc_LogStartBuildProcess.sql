-- =============================================
-- Author:		Paul McLoed
-- Create date:	November, 2011
-- Description:	Logs start of a build process
-- =============================================
Create PROCEDURE [build].[proc_LogStartBuildProcess]
	(
	 @BuildID int output,
	 @BuildLabel varchar(50)
	)
AS
BEGIN
	DECLARE @BuildStatusID int
	
	Select @BuildStatusID = PK_BuildStatusID from Data.dim_BuildStatus Where BuildStatus_Code = 'BUILD_START'
	
	Insert Into [Build].tbl_Build (BuildLabel,Build_Start,FK_BuildStatusID)
		Values(@BuildLabel,GETDATE(),@BuildStatusID)

	Select @BuildID = IDENT_CURRENT('Build.tbl_Build')
END
;