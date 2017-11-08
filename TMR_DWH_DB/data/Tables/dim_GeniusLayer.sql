CREATE TABLE [data].[dim_GeniusLayer] (
    [PK_GeniusLayerID]     INT            IDENTITY (1, 1) NOT NULL,
    [BK_Layer]             NVARCHAR (30)  NOT NULL,
    [Policy_Ref]           NVARCHAR (15)  NOT NULL,
    [Policy_LayerNo]       NVARCHAR (2)   NOT NULL,
    [StartDate]            DATETIME       NOT NULL,
    [EndDate]              DATETIME       NOT NULL,
    [CurrentFlag]          CHAR (1)       NOT NULL,
    [CreateDate]           DATETIME       NOT NULL,
    [UpdateDate]           DATETIME       NOT NULL,
    [FK_BuildID]           INT            NOT NULL,
    [Master_Number]        NVARCHAR (6)   NULL,
    [Master_Sequence]      NVARCHAR (3)   NULL,
    [LayerName]            NVARCHAR (100) NULL,
    [New_Renewal]          NVARCHAR (1)   NULL,
    [Policy]               NVARCHAR (7)   NULL,
    [Policy_Year]          NVARCHAR (4)   NULL,
    [Inception_Date]       DATETIME2 (7)  NULL,
    [Expiry_Date]          DATETIME2 (7)  NULL,
    [MultiYearFG]          NVARCHAR (1)   NULL,
    [NoOfYears]            INT            NULL,
    [CurrentYear]          INT            NULL,
    [Date_Effective]       DATE           NULL,
    [InforceUWYear]        INT            NULL,
    [MajorCCY]             NVARCHAR (5)   NULL,
    [DealFolderName]       NVARCHAR (200) NULL,
    [Is_RetiredFromGenius] BIT            NOT NULL,
    PRIMARY KEY CLUSTERED ([PK_GeniusLayerID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NCINDX_DataDimGeniusLayer_BK_Layer]
    ON [data].[dim_GeniusLayer]([BK_Layer] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UINDX_GeniusLayer_BKSectionCurrent]
    ON [data].[dim_GeniusLayer]([BK_Layer] ASC) WHERE ([CurrentFlag]='Y');

