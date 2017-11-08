CREATE TABLE [staging].[ZAHFDF00] (
    [rid]     INT             IDENTITY (1, 1) NOT NULL,
    [HFMVNB]  NUMERIC (7)     NULL,
    [HFMYNB]  NUMERIC (5)     NULL,
    [HFMZNB]  NUMERIC (5)     NULL,
    [HFMINB]  NUMERIC (9)     NULL,
    [HFSRTX]  NVARCHAR (15)   NULL,
    [HFB324]  NVARCHAR (15)   NULL,
    [HFAMBT]  NUMERIC (15, 2) NULL,
    [HFT8ST]  NVARCHAR (1)    NULL,
    [HFT7ST]  NVARCHAR (1)    NULL,
    [HFT9ST]  NVARCHAR (1)    NULL,
    [HFUEST]  NVARCHAR (1)    NULL,
    [HFNANB]  NUMERIC (9)     NULL,
    [HFTITX]  NUMERIC (9)     NULL,
    [HFUAST]  NVARCHAR (1)    NULL,
    [HFUBST]  NVARCHAR (1)    NULL,
    [HFUCST]  NVARCHAR (1)    NULL,
    [HFUDST]  NVARCHAR (1)    NULL,
    [BuildID] INT             NULL,
    PRIMARY KEY CLUSTERED ([rid] ASC)
);

