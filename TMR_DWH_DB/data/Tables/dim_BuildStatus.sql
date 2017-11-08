CREATE TABLE [data].[dim_BuildStatus](
	[PK_BuildStatusID] [int] IDENTITY(1,1) NOT NULL,
	[BK_BuildStatus] [varchar](100) NOT NULL,
	[BuildStatus_Code] [varchar](25) NULL,
	[BuildStatus_Label] [varchar](100) NULL,
 CONSTRAINT [PK_BuildStatusID] PRIMARY KEY CLUSTERED 
(
	[PK_BuildStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'Business Rule', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'PK_BuildStatusID'
GO

EXEC sys.sp_addextendedproperty @name=N'Field Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'PK_BuildStatusID'
GO

EXEC sys.sp_addextendedproperty @name=N'Field Source', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'PK_BuildStatusID'
GO

EXEC sys.sp_addextendedproperty @name=N'Logic Applied', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'PK_BuildStatusID'
GO

EXEC sys.sp_addextendedproperty @name=N'Business Rule', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'BK_BuildStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'Field Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'BK_BuildStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'Field Source', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'BK_BuildStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'Logic Applied', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'BK_BuildStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'Business Rule', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'BuildStatus_Code'
GO

EXEC sys.sp_addextendedproperty @name=N'Field Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'BuildStatus_Code'
GO

EXEC sys.sp_addextendedproperty @name=N'Field Source', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'BuildStatus_Code'
GO

EXEC sys.sp_addextendedproperty @name=N'Logic Applied', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'BuildStatus_Code'
GO

EXEC sys.sp_addextendedproperty @name=N'Business Rule', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'BuildStatus_Label'
GO

EXEC sys.sp_addextendedproperty @name=N'Field Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'BuildStatus_Label'
GO

EXEC sys.sp_addextendedproperty @name=N'Field Source', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'BuildStatus_Label'
GO

EXEC sys.sp_addextendedproperty @name=N'Logic Applied', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus', @level2type=N'COLUMN',@level2name=N'BuildStatus_Label'
GO

EXEC sys.sp_addextendedproperty @name=N'Business Rule', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'Data Sources', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'Source Filter Criteria', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'Source Join Criteria', @value=N'' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'Table Description', @value=N'Code Table of Build Status Values' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus'
GO

EXEC sys.sp_addextendedproperty @name=N'Table Type', @value=N'Dimension' , @level0type=N'SCHEMA',@level0name=N'data', @level1type=N'TABLE',@level1name=N'dim_BuildStatus'
GO



