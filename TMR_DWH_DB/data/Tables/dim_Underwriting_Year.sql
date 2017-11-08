CREATE TABLE [data].[dim_Underwriting_Year] (
    [PK_Underwriting_YearID]  INT            NOT NULL,
    [BK_Underwriting_Year]    NVARCHAR (100) NOT NULL,
    [Underwriting_Year_Code]  NVARCHAR (25)  NULL,
    [Underwriting_Year_Label] NVARCHAR (100) NULL,
    [CreateDate]              DATETIME       NULL,
    [UpdateDate]              DATETIME       NULL,
    [FK_BuildID]              INT            NULL
);

