/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

:r .\PostDeploy\Data\build.TallyTable.Populate.sql
:r .\PostDeploy\Data\build.tbl_ControlValues.Populate.sql
:r .\PostDeploy\Data\build.tbl_Build.Populate.sql
:r .\PostDeploy\Data\data.dim_BuildStatus.Populate.sql
:r .\PostDeploy\Data\data.dim_Date.Populate.sql
