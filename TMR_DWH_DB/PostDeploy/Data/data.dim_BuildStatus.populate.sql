-- Allow identity column to have inserts (only done as part of the build/deployment process)
SET IDENTITY_INSERT [data].[dim_BuildStatus] ON;

-- Add/update required records as required.
MERGE [data].[dim_BuildStatus] AS target
USING (
	VALUES
		(1,'Build_Started','BUILD_START','Build Started'),
		(2,'Build_Finished','BUILD_FINISH','Build Finished'),
		(3,'Build_Error','BUILD_ERROR','Build Error')
) AS source (PK_BuildStatusID, BK_BuildStatus, BuildStatus_Code, BuildStatus_Label)
	ON (target.PK_BuildStatusID = source.PK_BuildStatusId)
WHEN MATCHED THEN
	UPDATE
		SET
			target.BK_BuildStatus = source.BK_BuildStatus,
			target.BuildStatus_Code = source.BuildStatus_Code,
			target.BuildStatus_Label = source.BuildStatus_Label
WHEN NOT MATCHED BY TARGET THEN
	INSERT (
		PK_BuildStatusID, 
		BK_BuildStatus, 
		BuildStatus_Code, 
		BuildStatus_Label
	)
	VALUES (
		source.PK_BuildStatusID, 
		source.BK_BuildStatus, 
		source.BuildStatus_Code, 
		source.BuildStatus_Label
	);

-- Deny identity column to have inserts (ready for production use)
SET IDENTITY_INSERT [data].[dim_BuildStatus] OFF;