/*********************************************************************
*	This script populates an initial -1 value into the build table
*	which ensures the packages can run in the dev environment
*********************************************************************/

SET IDENTITY_INSERT [build].[tbl_Build] ON;

MERGE [build].[tbl_Build] AS target
USING (
	VALUES(-1,1,'Ad Hoc (DEV)','2000-01-01')
) AS source (PK_BuildID,FK_BuildStatusID,BuildLabel,Build_Start)
	ON target.PK_BuildID = source.PK_BuildID
WHEN MATCHED THEN
	UPDATE
		SET 
			target.FK_BuildStatusID = source.FK_BuildStatusID,
			target.BuildLabel = source.BuildLabel,
			target.Build_Start = source.Build_Start
WHEN NOT MATCHED BY TARGET THEN
	INSERT (
		PK_BuildID,
		FK_BuildStatusID,
		BuildLabel,
		Build_Start
	)
	VALUES (
		source.PK_BuildID,
		source.FK_BuildStatusID,
		source.BuildLabel,
		source.Build_Start
	);

SET IDENTITY_INSERT [build].[tbl_Build] OFF;