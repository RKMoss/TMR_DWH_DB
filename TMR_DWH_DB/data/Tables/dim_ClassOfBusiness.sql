CREATE TABLE [data].[dim_ClassOfBusiness] (
    [PK_ClassOfBusinessID]     INT            IDENTITY (0, 1) NOT NULL,
    [BK_ClassOfBusiness]       NVARCHAR (5)   NULL,
    [ClassOfBusiness_Label]    NVARCHAR (260) NULL,
    [GP_ClassOfBusiness]       NVARCHAR (67)  NULL,
    [StartDate]                DATETIME       NULL,
    [EndDate]                  DATETIME       NULL,
    [CurrentFlag]              NVARCHAR (1)   NULL,
    [FK_BuildID]               INT            NULL,
    [GP_ClassOfBusiness_Label] NVARCHAR (100) NULL,
    CONSTRAINT [PK_ClassOfBusinessID] PRIMARY KEY CLUSTERED ([PK_ClassOfBusinessID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Fil_UINDX_ClassOfBusiness_BKClassOfBusiness]
    ON [data].[dim_ClassOfBusiness]([BK_ClassOfBusiness] ASC) WHERE ([CurrentFlag]='Y');

