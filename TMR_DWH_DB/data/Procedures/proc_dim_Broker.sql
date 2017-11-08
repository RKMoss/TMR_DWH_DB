-- =============================================
-- Author:		Richard Moss
-- Create date: 2017-11-06
-- Description:	Procedure to rebuild the standard
-- Time dimension.
-- Change tracking:
--   When        Who            What
--   2017-11-06  Richard Moss	Initial version
-- =============================================
CREATE PROCEDURE [data].[proc_dim_Broker]
	@BuildID int
AS

BEGIN
	SET NOCOUNT ON;

	-- Declare and Populate Build table logging variable
		DECLARE
			@BuildLogID int
			, @Build_Group_Label varchar(50)
			, @Build_Step_Label varchar(50)
			, @Table_Schema varchar(50)
			, @Table_Name varchar(50)
			, @ErrorMessage varchar(max)

		SELECT
			@Build_Group_Label = 'Dimension Table Builds'
			, @Build_Step_Label = 'Build dim_Broker'
			, @Table_Schema = 'Data'
			, @Table_Name = 'dim_Broker'
		
		-- Write Build Log record for dim_Time
		EXEC Build.proc_LogBuildStepStart
				@BuildLogID output,
				@BuildID,
				@Table_Schema,
				@Table_Name,
				@Build_Group_Label,
				@Build_Step_Label
			
		BEGIN TRY
			-- Drop temp table if it still exists
			if object_id(N'tempdb..#SICSBrokers') > 0
				DROP TABLE #SICSBrokers;
			
			-- Create temp table to hold Broker information
			CREATE TABLE #SICSBrokers (
				[BK_Broker] nvarchar(20),
				[BrokerName] nvarchar(80),
				[BrokerGroup] nvarchar(80),
				[BrokerOffice] nvarchar(45)
			);

			-- Populate temp table to hold broker information
			INSERT INTO #SICSBrokers (
				[BK_Broker],
				[BrokerName],
				[BrokerGroup],
				[BrokerOffice]
			)
			SELECT DISTINCT
				[BK_Broker] = p.[IDENTIFIER]
				,[BrokerName] = bsr.[BROKER_NAME]
				,[BrokerGroup] = NULL
				,[BrokerOffice] = p.[LOCATION]
			FROM staging.BUS_STRUCT_REP bsr
			INNER JOIN staging.PARTY p
				ON bsr.FK_BROKER = p.[OBJECT_ID];

			-- Merge data into table
			MERGE INTO data.dim_Broker AS target
			USING (
				SELECT
					[BK_Broker],
					[BrokerName],
					[BrokerGroup],
					[BrokerOffice],
					[CreateDate] = GETDATE(),
					[UpdateDate] = GETDATE(),
					[DataSource] = 'SICS'
				FROM #SICSBrokers
			) AS source 
				ON target.BK_Broker = source.BK_Broker
			WHEN MATCHED 
					AND (target.[BrokerName] <> source.[BrokerName]
					OR	 target.[BrokerGroup] <> source.[BrokerGroup]
					OR	 target.[BrokerOffice] <> source.[BrokerOffice]) THEN
				UPDATE
					SET  target.[BrokerName] = source.[BrokerName],
						 target.[BrokerGroup] = source.[BrokerGroup],
						 target.[BrokerOffice] = source.[BrokerOffice],
						 target.[UpdateDate] = source.[UpdateDate],
						 target.[DataSource] = source.[DataSource]
			WHEN NOT MATCHED BY TARGET THEN
				INSERT (
					[BK_Broker],
					[BrokerName],
					[BrokerGroup],
					[BrokerOffice],
					[CreateDate],
					[FK_BuildID],
					[DataSource]
				)
				VALUES (
					source.[BK_Broker],
					source.[BrokerName],
					source.[BrokerGroup],
					source.[BrokerOffice],
					source.[CreateDate],
					@BuildID,
					source.[DataSource]
				);

		END TRY

		BEGIN CATCH
            -- Somewhere to store the error message:
            DECLARE @ErrorString [NVARCHAR](2000)
            SELECT @ErrorString = 'AN ERROR HAS OCCURRED, DETAILS -> ErrorNumber: ' + 
                 ISNULL(ERROR_NUMBER()      ,'NULL') + ', ErrorSeverity: '          + 
                 ISNULL(ERROR_SEVERITY()    ,'NULL') + ', ErrorState: '             +  
                 ISNULL(ERROR_STATE()       ,'NULL') + ', ErrorProcedure: '         +
                 ISNULL(ERROR_PROCEDURE()   ,'NULL') + ', ErrorLine: '              +
                 ISNULL(ERROR_LINE()        ,'NULL') + ', ErrorMessage: '           +
                 ISNULL(ERROR_MESSAGE()     ,'NULL') + '. END OF ERROR INFORMATION.' 
                 ;


            DECLARE 
                 @ErrorState    [INTEGER]       = ERROR_STATE()    
                ,@ProcedureName [NVARCHAR](200) = OBJECT_NAME(@@PROCID)
                ;

            SELECT @ErrorString;--
            -- Log Finished
            EXEC Build.proc_LogBuildStepEnd
		            @BuildLogID,
		            @Build_OK = 0,
		            @Error_Message = @ErrorString
            -- Errors with severity between 20 and 25 terminate the client collection immediately:
            RAISERROR (@ErrorString,22,@ErrorState,@ProcedureName) WITH NOWAIT;
		END CATCH

END
