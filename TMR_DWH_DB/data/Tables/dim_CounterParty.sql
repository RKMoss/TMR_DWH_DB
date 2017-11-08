CREATE TABLE [data].[dim_CounterParty] (
    [PK_CounterPartyID]            INT            IDENTITY (1, 1) NOT NULL,
    [BK_InwardsContract]           NVARCHAR (30)  NOT NULL,
    [InwardsAccountManager]        NVARCHAR (100) NOT NULL,
    [BK_RetroContract]             NVARCHAR (30)  NOT NULL,
    [RetroAccountManager]          NVARCHAR (100) NOT NULL,
    [BK_CounterParty]              NVARCHAR (50)  NOT NULL,
    [CounterPartyName]             NVARCHAR (255) NOT NULL,
    [CessionPercent]               MONEY          NOT NULL,
    [StartDate]                    DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    [EndDate]                      DATETIME2 (7)  DEFAULT ('2099-12-31') NOT NULL,
    [CurrentFlag]                  NVARCHAR (1)   DEFAULT ('Y') NOT NULL,
    [CreateDate]                   DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    [UpdateDate]                   DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    [FK_BuildID]                   INT            NOT NULL,
    [CededLimitOrig]               NVARCHAR (34)  NULL,
    [CededLimitOurShareOrig]       NVARCHAR (34)  NULL,
    [CededLimit]                   NUMERIC (15)   NULL,
    [CededLimitBase]               NUMERIC (15)   NULL,
    [CededLimitOurShare]           NUMERIC (15)   NULL,
    [CededLimitOurShareBase]       NUMERIC (15)   NULL,
    [CedantAssetManager]           NVARCHAR (255) NULL,
    [RetroAccountManager_Override] NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([PK_CounterPartyID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UINDX_Filtered_DimCounterParty_BKInwardsContract_BKRetroContract]
    ON [data].[dim_CounterParty]([BK_InwardsContract] ASC, [BK_RetroContract] ASC) WHERE ([CurrentFlag]='Y');

