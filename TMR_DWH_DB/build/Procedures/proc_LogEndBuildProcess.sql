-- =============================================
-- Author:		Paul McLoed
-- Create date:	November, 2011
-- Description:	Logs end of a build process
-- =============================================
CREATE PROCEDURE [build].[proc_LogEndBuildProcess]
	(
	 @BuildID int
	)
AS
BEGIN
	DECLARE
		@ErrorID int,
		@InProgressID int,
		@SuccessID int,
		
		@TotalSteps int,
		@StepsInProgress int,
		@StepsOK int,
		@StepsFailed int,
		@OverallBuildStatus int,
		@OverallErrorMessage varchar(max),
		
		@Build_Group_Label varchar(50),
		@Build_Step_Label varchar(50),
		@BuildStatusID int,
		@ErrorMessage varchar(max)
		
	-- Initialise Variables
	Select
		@TotalSteps = 0,
		@StepsInProgress = 0,
		@StepsOK = 0,
		@StepsFailed = 0,
		@OverallBuildStatus = 0,
		@OverallErrorMessage = ''
		
	Select @ErrorID = PK_BuildStatusID from Data.dim_BuildStatus Where BuildStatus_Code = 'BUILD_ERROR'
	Select @InProgressID = PK_BuildStatusID from Data.dim_BuildStatus Where BuildStatus_Code = 'BUILD_START'
	Select @SuccessID = PK_BuildStatusID from Data.dim_BuildStatus Where BuildStatus_Code = 'BUILD_FINISH'

	-- Review all Build Steps for this build and determine if an error has taken place.
	Declare LogSteps_Cursor Cursor For
	Select 
		Build_Group_Label,
		Build_Step_Label,
		FK_BuildStatusID,
		[Error_Message]
	From Build.tbl_BuildLog
	Where FK_BuildID = @BuildID
	

	Open LogSteps_Cursor
	
	Fetch Next From LogSteps_Cursor Into 
		@Build_Group_Label,
		@Build_Step_Label,
		@BuildStatusID,
		@ErrorMessage

	While @@FETCH_STATUS = 0
	Begin
		-- Track Overall build status
		Select @OverallBuildStatus = 
			CASE
				When @OverallBuildStatus = @ErrorID Then @ErrorID -- If One Error then in error
				When @BuildStatusID = @ErrorID Then @ErrorID
				When @BuildStatusID = @InProgressID and @OverallBuildStatus <> @ErrorID Then @InProgressID
				Else @OverallBuildStatus
			END
		
		-- Count Steps
		Select
			@TotalSteps = @TotalSteps + 1,
			@StepsFailed = 
			CASE
				When @BuildStatusID = @ErrorID Then @StepsFailed + 1
				Else @StepsFailed
			END,
			@StepsInProgress =
			CASE
				When @BuildStatusID = @InProgressID Then @StepsInProgress + 1
				Else @StepsInProgress
			END,
			@StepsOK = 
			CASE
				When @BuildStatusID = @SuccessID Then @StepsOK + 1
				Else @StepsOK
			END,
			@OverallErrorMessage = 
			CASE
				When @OverallErrorMessage = '' and @BuildStatusID = @ErrorID then 'Step "'+@Build_Step_Label+'" in Build Group "'+@Build_Group_Label+'" received the following error:'+@ErrorMessage
				When @BuildStatusID = @ErrorID then @OverallErrorMessage+'; Step "'+@Build_Step_Label+'" in Build Group "'+@Build_Group_Label+'" received the following error:'+@ErrorMessage
				When @OverallErrorMessage = '' and @BuildStatusID = @InProgressID then 'Step "'+@Build_Step_Label+'" in Build Group "'+@Build_Group_Label+'" is still processing'
				When @BuildStatusID = @InProgressID then @OverallErrorMessage+'; Step "'+@Build_Step_Label+'" in Build Group "'+@Build_Group_Label+'" is still processing'
				Else @OverallErrorMessage
			END

		Fetch Next From LogSteps_Cursor Into 
			@Build_Group_Label,
			@Build_Step_Label,
			@BuildStatusID,
			@ErrorMessage
	END	

	Close LogSteps_Cursor
	Deallocate LogSteps_Cursor


	If @OverallBuildStatus = 0
		Select 
			@OverallBuildStatus = @SuccessID,
			@OverallErrorMessage = @OverallErrorMessage + '[Build Successful]'
	
	-- now Update Job
	Update [Build].tbl_Build 
		Set 
			FK_BuildStatusID = @OverallBuildStatus,
			Error_Messages = @OverallErrorMessage,
			Total_Steps = @TotalSteps,
			Steps_OK = @StepsOK,
			Steps_In_Error = @StepsFailed,
			Build_End = GETDATE()
	Where PK_BuildID = @BuildID			

END
;