CREATE PROCEDURE [build].[proc_SendEmail]
     @StepName  [NVARCHAR](100)
    ,@BuildID   [INTEGER]
    ,@Status    [NVARCHAR](30) -- Success or Failure
AS
BEGIN
    SET NOCOUNT ON;
    /*
    Description
    Encapsulates the logic needed to send an email so that they can easily be sent from within SSIS.
    Messages and distribution lists are controlled by configuration information in the table [build].[tbl_ControlValues].


    Change tracking:
    When        Who             What
    13.07.2016  Iain Hambleton  Initial version
    */

    DECLARE 
         @DistributionList  [NVARCHAR](2000) = (SELECT [ControlValue_Value] FROM [build].[tbl_ControlValues] WHERE [ControlValue_Name] = 'EmailDistributionList')
        ,@MessageBody       [NVARCHAR](2000) = 'BuildID = "' + CAST(@BuildID AS [NVARCHAR](20)) + '". Time = "' + CAST(GETDATE() AS [NVARCHAR](100)) + '.'
        ,@MessageSubject    [NVARCHAR](2000) = (SELECT [ControlValue_Value] + ' "' + @StepName + '".' FROM [build].[tbl_ControlValues] WHERE [ControlValue_Name] = 'Email' + @Status)
        ,@SendMail          [BIT]            = 0
        ;
    
    IF @Status ='Success'
        AND (SELECT [ControlValue_Value] FROM [build].[tbl_ControlValues] WHERE [ControlValue_Name] = 'EmailUponSuccess') = 'True'
        BEGIN
            SET @SendMail = 1; --This has a default of 0
        END;
    
    IF @Status IN ('Failure','Error') 
        BEGIN
            SET @SendMail = 1; --This has a default of 0
        END;


    IF @SendMail = 1
    BEGIN
        EXEC [msdb].[dbo].[sp_send_dbmail]
             @profile_name   = 'SQLMail'
            ,@recipients     = @DistributionList
            ,@body           = @MessageBody
            ,@subject        = @MessageSubject
            ;
    END;
    RETURN 0;

END;