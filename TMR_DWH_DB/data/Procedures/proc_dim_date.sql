-- =============================================
-- Author:		Kerry Heigham
-- Create date: Oct 17th, 2011
-- Description:	Procedure to rebuild the standard
-- Time dimension.
-- =============================================
CREATE PROCEDURE [data].[proc_dim_Date] 
	(@StartDate Date, @FinYearStart int, @BuildID int, @EndDate Date = NULL)
AS
BEGIN
    /*
    Change Tracking

    WHEN        WHO		WHAT
    2017.04.13  IAH		Enddate was determined by GETDATE = 18M, not @StartDate + 18M 
	2017.10.25	RKM		Rewritten procedure to make it set based using a TallyTable to create the dates.

    */
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

		-- Declare and Populate required Date variables
		DECLARE
			  @FinMonth int
			, @FinQuarter int
			, @FinYear int

		-- Tweak @StartDate to handle the fact that the tally table will always add a day to the first date in the range
		SELECT @StartDate = DATEADD(d,-1,@StartDate)
		
		-- Check if @EndDate is populated and if not assume the end date is 18 months on from the start date
		SELECT @EndDate = CASE WHEN @EndDate IS NULL THEN DATEADD(m,18,@StartDate) ELSE @EndDate END
	
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
			, @Build_Step_Label = 'Build dim_Date'
			, @Table_Schema = 'Data'
			, @Table_Name = 'dim_Date'
		
		-- Write Build Log record for dim_Time
		EXEC Build.proc_LogBuildStepStart
				@BuildLogID output,
				@BuildID,
				@Table_Schema,
				@Table_Name,
				@Build_Group_Label,
				@Build_Step_Label
			
		BEGIN TRY
	
			SET DATEFIRST 1 -- Monday 
		
			-- Use table variable to hold values ready for merge statement
			DECLARE @DateTable TABLE (
				[PK_DateID] [int] NOT NULL,
				[Date] [date] NOT NULL,
				[Genius] [int] NOT NULL,
				[Date_Short] [nvarchar](25) NULL,
				[Date_Long] [nvarchar](25) NULL,
				[Week_Num] [int] NULL,
				[Week_Short] [nvarchar](25) NULL,
				[Week_Long] [nvarchar](25) NULL,
				[Week_Sort] [int] NULL,
				[Month] [nvarchar](25) NULL,
				[Month_Num] [int] NULL,
				[Month_Short] [nvarchar](25) NULL,
				[Month_Long] [nvarchar](25) NULL,
				[Month_Sort] [int] NULL,
				[Quarter] [nvarchar](25) NULL,
				[Quarter_Num] [int] NULL,
				[Quarter_Short] [nvarchar](25) NULL,
				[Quarter_Long] [nvarchar](25) NULL,
				[Quarter_Sort] [int] NULL,
				[Year] [int] NULL,
				[Fin_Month_Num] [int] NULL,
				[Fin_Month] [nvarchar](25) NULL,
				[Fin_Month_Sort] [int] NULL,
				[Fin_Quarter_Num] [int] NULL,
				[Fin_Quarter] [nvarchar](25) NULL,
				[Fin_Quarter_Sort] [int] NULL,
				[Fin_Year] [int] NULL,
				[Fin_Year_Label] [nvarchar](7) NULL,
				[Day_Of_Week] [nvarchar](25) NULL,
				[Week_Day] [bit] NULL,
				[Week_End] [bit] NULL,
				[Holiday] [bit] NULL
			)

			-- Populate the table variable @DateTable
			INSERT INTO @DateTable (
					[PK_DateID]
				,[Date]
				,[Genius]
				,[Date_Short]
				,[Date_Long]
				,[Week_Num]
				,[Week_Short]
				,[Week_Long]
				,[Week_Sort]
				,[Month]
				,[Month_Num]
				,[Month_Short]
				,[Month_Long]
				,[Month_Sort]
				,[Quarter]
				,[Quarter_Num]
				,[Quarter_Short]
				,[Quarter_Long]
				,[Quarter_Sort]
				,[Year]
				,[Fin_Month_Num]
				,[Fin_Month]
				,[Fin_Month_Sort]
				,[Fin_Quarter_Num]
				,[Fin_Quarter]
				,[Fin_Quarter_Sort]
				,[Fin_Year]
				,[Fin_Year_Label]
				,[Day_Of_Week]
				,[Week_Day]
				,[Week_End]
				,[Holiday]
			)
			SELECT
				PK_DateID = Convert(int,CONVERT(varchar(25),DATEADD(d,tt.TallyId,@StartDate),112))
				, [Date] = DATEADD(d,tt.TallyId,@StartDate)
				, Genius = CAST([data].[fDateTime_ToGENIUSDateString](DATEADD(d,tt.TallyId,@StartDate)) as int)
				, Date_Short = SUBSTRING(DATENAME(MONTH, DATEADD(d,tt.TallyId,@StartDate)),1,3) + ' ' + SUBSTRING(CONVERT(varchar(3),100 + DATEPART(d,DATEADD(d,tt.TallyId,@StartDate))),2,2) + ', ' + DATENAME(YEAR,DATEADD(d,tt.TallyId,@StartDate))
				, Date_Long = DATENAME(MONTH, DATEADD(d,tt.TallyId,@StartDate)) + ' ' + SUBSTRING(CONVERT(varchar(3),100 + DATEPART(d,DATEADD(d,tt.TallyId,@StartDate))),2,2) + ', ' + DATENAME(YEAR,DATEADD(d,tt.TallyId,@StartDate))
				, Week_Num = DATEPART(WEEK,DATEADD(d,tt.TallyId,@StartDate))
				, Week_Short = 'WK' + SUBSTRING(CONVERT(char(3),100 + DATEPART(WEEK,DATEADD(d,tt.TallyId,@StartDate))),2,2) + ' ' + DATENAME(YYYY,DATEADD(d,tt.TallyId,@StartDate))
				, Week_Long = 'Week ' + SUBSTRING(CONVERT(char(3),100 + DATEPART(WEEK,DATEADD(d,tt.TallyId,@StartDate))),2,2) + ' ' + DATENAME(YYYY,DATEADD(d,tt.TallyId,@StartDate))
				, Week_Sort = (Year(DATEADD(d,tt.TallyId,@StartDate))*100) + DATEPART(WEEK,DATEADD(d,tt.TallyId,@StartDate))
				, Month = DATENAME(MONTH,DATEADD(d,tt.TallyId,@StartDate))
				, Month_Num = DATEPART(MONTH,DATEADD(d,tt.TallyId,@StartDate))
				, Month_Short = SUBSTRING(DATENAME(MONTH, DATEADD(d,tt.TallyId,@StartDate)),1,3) + '-' + DATENAME(YEAR,DATEADD(d,tt.TallyId,@StartDate))
				, Month_Long = DATENAME(MONTH, DATEADD(d,tt.TallyId,@StartDate)) + ' ' + ', ' + DATENAME(YEAR,DATEADD(d,tt.TallyId,@StartDate))
				, Month_Sort = (YEAR(DATEADD(d,tt.TallyId,@StartDate))*100) + DATEPART(MONTH,DATEADD(d,tt.TallyId,@StartDate))
				, Quarter = 'Q' + DATENAME(QUARTER,DATEADD(d,tt.TallyId,@StartDate))
				, Quarter_Num = DATEPART(QUARTER,DATEADD(d,tt.TallyId,@StartDate))
				, Quarter_Short = 'Q' + DATENAME(QUARTER,DATEADD(d,tt.TallyId,@StartDate)) + ' ' + DATENAME(YEAR,DATEADD(d,tt.TallyId,@StartDate))
				, Quarter_Long = 'Qtr ' + DATENAME(QUARTER,DATEADD(d,tt.TallyId,@StartDate)) + ' ' + DATENAME(YEAR,DATEADD(d,tt.TallyId,@StartDate))
				, Quarter_Sort = (YEAR(DATEADD(d,tt.TallyId,@StartDate))*10) + DATEPART(QUARTER,DATEADD(d,tt.TallyId,@StartDate))
				, Year = DATEPART(YEAR, DATEADD(d,tt.TallyId,@StartDate))
				-- At the moment financial values are the same as the calendar values.
				, Fin_Month_Num = DATEPART(MONTH,DATEADD(d,tt.TallyId,@StartDate))
				, Fin_Month = 'FM ' + SUBSTRING(CONVERT(varchar(3),DATEPART(MONTH,DATEADD(d,tt.TallyId,@StartDate)) + 100),2,2) + ' ' + CONVERT(varchar(4),DATEPART(YEAR, DATEADD(d,tt.TallyId,@StartDate)))
				, Fin_Month_Sort = (YEAR(DATEADD(d,tt.TallyId,@StartDate))*100) + DATEPART(MONTH,DATEADD(d,tt.TallyId,@StartDate))
				, Fin_Quarter_Num = DATEPART(QUARTER,DATEADD(d,tt.TallyId,@StartDate))
				, Fin_Quarter = 'FQtr ' + DATENAME(QUARTER,DATEADD(d,tt.TallyId,@StartDate)) + ' ' + DATENAME(YEAR,DATEADD(d,tt.TallyId,@StartDate))
				, Fin_Quarter_Sort = DATEPART(YEAR, DATEADD(d,tt.TallyId,@StartDate))*100 +  DATEPART(QUARTER,DATEADD(d,tt.TallyId,@StartDate))
				, Fin_Year = DATEPART(YEAR, DATEADD(d,tt.TallyId,@StartDate))
				, Fin_Year_Label = 'FY '+ CONVERT(varchar(4),DATEPART(YEAR, DATEADD(d,tt.TallyId,@StartDate)))
				-- End of financial calcendar values
				, Day_Of_Week = DATENAME(WEEKDAY,DATEADD(d,tt.TallyId,@StartDate))
				, Week_Day = CASE WHEN DATEPART(WEEKDAY,DATEADD(d,tt.TallyId,@StartDate)) >= 6 THEN 0 ELSE 1 END
				, Week_End = CASE WHEN DATEPART(WEEKDAY,DATEADD(d,tt.TallyId,@StartDate)) >= 6 THEN 1 ELSE 0 END
				, Holiday = 0 -- Default value
			FROM build.TallyTable tt
			WHERE tt.TallyId <= DATEDIFF(d,@StartDate,@EndDate)

			-- <<PLACEHOLDER>> need code here to update table for holiday days (if required)
		
			MERGE data.dim_Date AS target
			USING (
				SELECT
					 [PK_DateID]
					,[Date]
					,[Genius]
					,[Date_Short]
					,[Date_Long]
					,[Week_Num]
					,[Week_Short]
					,[Week_Long]
					,[Week_Sort]
					,[Month]
					,[Month_Num]
					,[Month_Short]
					,[Month_Long]
					,[Month_Sort]
					,[Quarter]
					,[Quarter_Num]
					,[Quarter_Short]
					,[Quarter_Long]
					,[Quarter_Sort]
					,[Year]
					,[Fin_Month_Num]
					,[Fin_Month]
					,[Fin_Month_Sort]
					,[Fin_Quarter_Num]
					,[Fin_Quarter]
					,[Fin_Quarter_Sort]
					,[Fin_Year]
					,[Fin_Year_Label]
					,[Day_Of_Week]
					,[Week_Day]
					,[Week_End]
					,[Holiday]
				FROM @DateTable
			) AS source
				ON target.PK_DateID = source.PK_DateID
			WHEN MATCHED THEN
				UPDATE
					SET
						target.[Date] = source.[Date],
						target.[Genius] = source.[Genius],
						target.[Date_Short] = source.[Date_Short],
						target.[Date_Long] = source.[Date_Long],
						target.[Week_Num] = source.[Week_Num],
						target.[Week_Short] = source.[Week_Short],
						target.[Week_Sort] = source.[Week_Sort],
						target.[Month] = source.[Month],
						target.[Month_Num] = source.[Month_Num],
						target.[Month_Short] = source.[Month_Short],
						target.[Month_Long] = source.[Month_Long],
						target.[Month_Sort] = source.[Month_Sort],
						target.[Quarter] = source.[Quarter],
						target.[Quarter_Num] = source.[Quarter_Num],
						target.[Quarter_Short] = source.[Quarter_Short],
						target.[Quarter_Long] = source.[Quarter_Long],
						target.[Quarter_Sort] = source.[Quarter_Sort],
						target.[Year] = source.[Year],
						target.[Fin_Month_Num] = source.[Fin_Month_Num],
						target.[Fin_Month] = source.[Fin_Month],
						target.[Fin_Month_Sort] = source.[Fin_Month_Sort],
						target.[Fin_Quarter_Num] = source.[Fin_Quarter_Num],
						target.[Fin_Quarter] = source.[Fin_Quarter],
						target.[Fin_Quarter_Sort] = source.[Fin_Quarter_Sort],
						target.[Fin_Year] = source.[Fin_Year],
						target.[Fin_Year_Label] = source.[Fin_Year_Label],
						target.[Day_Of_Week] = source.[Day_Of_Week],
						target.[Week_Day] = source.[Week_Day],
						target.[Week_End] = source.[Week_End],
						target.[Holiday] = source.[Holiday]
			WHEN NOT MATCHED BY TARGET THEN
				INSERT (
					 [PK_DateID]
					,[Date]
					,[Genius]
					,[Date_Short]
					,[Date_Long]
					,[Week_Num]
					,[Week_Short]
					,[Week_Long]
					,[Week_Sort]
					,[Month]
					,[Month_Num]
					,[Month_Short]
					,[Month_Long]
					,[Month_Sort]
					,[Quarter]
					,[Quarter_Num]
					,[Quarter_Short]
					,[Quarter_Long]
					,[Quarter_Sort]
					,[Year]
					,[Fin_Month_Num]
					,[Fin_Month]
					,[Fin_Month_Sort]
					,[Fin_Quarter_Num]
					,[Fin_Quarter]
					,[Fin_Quarter_Sort]
					,[Fin_Year]
					,[Fin_Year_Label]
					,[Day_Of_Week]
					,[Week_Day]
					,[Week_End]
					,[Holiday]
				)
				VALUES (
					 source.[PK_DateID]
					,source.[Date]
					,source.[Genius]
					,source.[Date_Short]
					,source.[Date_Long]
					,source.[Week_Num]
					,source.[Week_Short]
					,source.[Week_Long]
					,source.[Week_Sort]
					,source.[Month]
					,source.[Month_Num]
					,source.[Month_Short]
					,source.[Month_Long]
					,source.[Month_Sort]
					,source.[Quarter]
					,source.[Quarter_Num]
					,source.[Quarter_Short]
					,source.[Quarter_Long]
					,source.[Quarter_Sort]
					,source.[Year]
					,source.[Fin_Month_Num]
					,source.[Fin_Month]
					,source.[Fin_Month_Sort]
					,source.[Fin_Quarter_Num]
					,source.[Fin_Quarter]
					,source.[Fin_Quarter_Sort]
					,source.[Fin_Year]
					,source.[Fin_Year_Label]
					,source.[Day_Of_Week]
					,source.[Week_Day]
					,source.[Week_End]
					,source.[Holiday]
				)
				;
		
			-- Log Finished
			EXEC Build.proc_LogBuildStepEnd
					@BuildLogID,
					@Build_OK = 1,
					@Error_Message = ''
		END TRY
	
		BEGIN CATCH
            -- Somewhere to store the error message:
            DECLARE @ErrorString [NVARCHAR](2000)
            SELECT @ErrorString = 'AN ERROR HAS OCCURRED, DETAILS -> ErrorNumber: ' + 
                 ISNULL(ERROR_NUMBER()      ,'NULL') + ', ErrorSeverity: '          + 
                 ISNULL(ERROR_SEVERITY()    ,'NULL') + ', ErrorState: '             +  
                 ISNULL(ERROR_STATE()       ,'NULL') + ', ErrorProcedure: '         +
                 ISNULL(ERROR_PROCEDURE()   ,'NULL') + ', ErrorLine: '              +
                 ISNULL(ERROR_LINE()        ,'NULL') + ',  ErrorMessage: '          +
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
