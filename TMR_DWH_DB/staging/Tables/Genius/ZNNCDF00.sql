﻿CREATE TABLE [staging].[ZNNCDF00] (
    [rid]     INT             IDENTITY (1, 1) NOT NULL,
    [NCNACD]  NVARCHAR (8)    NULL,
    [NCNQSQ]  NVARCHAR (3)    NULL,
    [NCEDSQ]  NUMERIC (3)     NULL,
    [NCCSCD]  NVARCHAR (2)    NULL,
    [NCLHNM]  NVARCHAR (50)   NULL,
    [NCLHN2]  NVARCHAR (50)   NULL,
    [NCADNM]  NVARCHAR (30)   NULL,
    [NCRAAZ]  NVARCHAR (10)   NULL,
    [NCX03]   NUMERIC (7)     NULL,
    [NCSTDT]  NUMERIC (7)     NULL,
    [NCENDT]  NUMERIC (7)     NULL,
    [NCEDSS]  NVARCHAR (1)    NULL,
    [NCNQF1]  NVARCHAR (1)    NULL,
    [NCNQF2]  NVARCHAR (1)    NULL,
    [NCNQF3]  NVARCHAR (1)    NULL,
    [NCNQF4]  NVARCHAR (1)    NULL,
    [NCROCD]  NVARCHAR (6)    NULL,
    [NCAC01]  NUMERIC (7)     NULL,
    [NCAC02]  NUMERIC (7)     NULL,
    [NCAC03]  NUMERIC (15, 2) NULL,
    [NCAC04]  NUMERIC (7)     NULL,
    [NCAC05]  NVARCHAR (1)    NULL,
    [NCAC06]  NVARCHAR (1)    NULL,
    [BuildID] INT             NULL,
    PRIMARY KEY CLUSTERED ([rid] ASC)
);

