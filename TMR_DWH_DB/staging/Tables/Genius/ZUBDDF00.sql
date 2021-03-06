﻿CREATE TABLE [staging].[ZUBDDF00] (
    [rid]    INT           IDENTITY (1, 1) NOT NULL,
    [BDNACD] NVARCHAR (8)  NULL,
    [BDISSQ] NUMERIC (7)   NULL,
    [BDBDR1] NVARCHAR (15) NULL,
    [BDBDR2] NVARCHAR (15) NULL,
    [BDBDF1] NVARCHAR (1)  NULL,
    [BDBDF2] NVARCHAR (1)  NULL,
    [BDBDF3] NVARCHAR (1)  NULL,
    [BDBDF4] NVARCHAR (1)  NULL,
    PRIMARY KEY CLUSTERED ([rid] ASC)
);

