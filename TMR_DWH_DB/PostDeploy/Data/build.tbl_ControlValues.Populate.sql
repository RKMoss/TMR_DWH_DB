-- Allow identity column to have inserts (only done as part of the build/deployment process)
SET IDENTITY_INSERT [build].[tbl_ControlValues] ON;

-- Add/update required records as required.
MERGE [build].[tbl_ControlValues] AS target
USING (
	VALUES
		(1,'StagingRefreshUnderway','False'),
		(2,'EmailUponSuccess','False'),
		(3,'EmailDistributionList','rmoss@tokiomillenniumuk.com'),
		(4,'EmailSuccess','Success - Hourly load job step :'),
		(5,'EmailFailure','!!! FAILURE - HOURLY LOAD JOB. The step where failure occurred is:'),
		(6,'FuturePeriodsToRunFor','30')
) AS source (PK_tblControlValuesID, ControlValue_Name, ControlValue_Value)
	ON (target.PK_tblControlValuesID = source.PK_tblControlValuesID)
WHEN MATCHED THEN
	UPDATE
		SET
			target.ControlValue_Name = source.ControlValue_Name,
			target.ControlValue_Value = source.ControlValue_Value
WHEN NOT MATCHED BY TARGET THEN
	INSERT (
		PK_tblControlValuesID, 
		ControlValue_Name, 
		ControlValue_Value
	)
	VALUES (
		source.PK_tblControlValuesID, 
		source.ControlValue_Name, 
		source.ControlValue_Value
	);

-- Deny identity column to have inserts (ready for production use)
SET IDENTITY_INSERT [build].[tbl_ControlValues] OFF;