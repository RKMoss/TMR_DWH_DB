CREATE TABLE [build].[tbl_Build](
	[PK_BuildID] [int] IDENTITY(1,1) NOT NULL,
	[FK_BuildStatusID] [int] NOT NULL,
	[BuildLabel] [varchar](50) NOT NULL,
	[Build_Start] [datetime] NULL,
	[Build_End] [datetime] NULL,
	[Total_Steps] [int] NULL,
	[Steps_OK] [int] NULL,
	[Steps_In_Error] [int] NULL,
	[Error_Messages] [varchar](max) NULL,
 CONSTRAINT [PK_tbl_Build] PRIMARY KEY CLUSTERED 
(
	[PK_BuildID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Overnight build process header records' , @level0type=N'SCHEMA',@level0name=N'build', @level1type=N'TABLE',@level1name=N'tbl_Build'
GO