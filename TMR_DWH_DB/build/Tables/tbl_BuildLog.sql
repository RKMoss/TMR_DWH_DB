CREATE TABLE [build].[tbl_BuildLog](
	[PK_BuildLogID] [int] IDENTITY(1,1) NOT NULL,
	[FK_BuildID] [int] NOT NULL,
	[FK_BuildStatusID] [int] NOT NULL,
	[Build_Group_Label] [varchar](50) NOT NULL,
	[Build_Step_Label] [varchar](50) NOT NULL,
	[Table_Schema] [varchar](50) NULL,
	[Table_Name] [varchar](50) NULL,
	[BuildStart] [datetime] NULL,
	[BuildEnd] [datetime] NULL,
	[Records_Before] [int] NULL,
	[Records_End] [int] NULL,
	[Records_Processed] [int] NULL,
	[Records_Inserted] [int] NULL,
	[Records_Updated] [int] NULL,
	[Error_Message] [varchar](max) NULL,
 CONSTRAINT [PK_tbl_BuildLog] PRIMARY KEY CLUSTERED 
(
	[PK_BuildLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [build].[tbl_BuildLog]  ADD  CONSTRAINT [FK_tbl_BuildLog_tbl_Build] FOREIGN KEY([FK_BuildID])
REFERENCES [build].[tbl_Build] ([PK_BuildID])
GO

ALTER TABLE [build].[tbl_BuildLog] CHECK CONSTRAINT [FK_tbl_BuildLog_tbl_Build]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Records the details of individual build events. This allows for detailed analysis and tuning of the build process.' , @level0type=N'SCHEMA',@level0name=N'build', @level1type=N'TABLE',@level1name=N'tbl_BuildLog'
GO