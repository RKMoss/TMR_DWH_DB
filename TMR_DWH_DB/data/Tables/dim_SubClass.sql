CREATE TABLE [data].[dim_SubClass] (
    [PK_SubClassID] INT            IDENTITY (0, 1) NOT NULL,
    [BK_SubClass]   NVARCHAR (50)  NOT NULL,
    [SubClassName]  NVARCHAR (255) NULL,
    [StartDate]     DATETIME2 (7)  NOT NULL,
    [EndDate]       DATETIME2 (7)  NOT NULL,
    [CurrentFlag]   CHAR (1)       NOT NULL,
    [FK_BuildID]    INT            NOT NULL,
    [SourceTable]   NVARCHAR (100) NULL,
    CONSTRAINT [PK_SubClassID] PRIMARY KEY CLUSTERED ([PK_SubClassID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UINDX_Filtered_DimSubClass_BKSubClass]
    ON [data].[dim_SubClass]([BK_SubClass] ASC) WHERE ([CurrentFlag] IN ('1', 'Y'));

