CREATE TABLE [data].[dim_LineOfBusiness] (
    [PK_LineOfBusinessID]  INT            IDENTITY (0, 1) NOT NULL,
    [BK_LineOfBusiness]    NVARCHAR (5)   NULL,
    [LineOfBusiness_Label] NVARCHAR (260) NULL,
    [StartDate]            DATETIME       NULL,
    [EndDate]              DATETIME       NULL,
    [CurrentFlag]          NVARCHAR (1)   NULL,
    [FK_BuildID]           INT            NULL,
    CONSTRAINT [PK_LineOfBusinessID] PRIMARY KEY CLUSTERED ([PK_LineOfBusinessID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UINDX_Filtered_DimLineOfBusiness_BKLineOfBusiness]
    ON [data].[dim_LineOfBusiness]([BK_LineOfBusiness] ASC) WHERE ([CurrentFlag]='Y');

