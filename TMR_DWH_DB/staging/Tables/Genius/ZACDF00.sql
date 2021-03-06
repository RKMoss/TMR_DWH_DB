﻿CREATE TABLE [staging].[ZACDF00] (
    [rid]     INT           IDENTITY (1, 1) NOT NULL,
    [CBTRRF]  NVARCHAR (3)  NULL,
    [CBD5GC]  NVARCHAR (15) NULL,
    [CBD5GD]  NVARCHAR (40) NULL,
    [CBD5GE]  NVARCHAR (1)  NULL,
    [CBD5GF]  NVARCHAR (1)  NULL,
    [CBD5GG]  NVARCHAR (1)  NULL,
    [CBD5GO]  NVARCHAR (3)  NULL,
    [CBIJF1]  NVARCHAR (1)  NULL,
    [CBD5GI]  NVARCHAR (1)  NULL,
    [CBD5GJ]  NVARCHAR (1)  NULL,
    [CBD5GK]  NVARCHAR (1)  NULL,
    [CBD5GL]  NVARCHAR (1)  NULL,
    [CBD5GM]  NVARCHAR (1)  NULL,
    [CBD5GN]  NVARCHAR (1)  NULL,
    [BuildID] INT           NULL,
    PRIMARY KEY CLUSTERED ([rid] ASC),
    UNIQUE NONCLUSTERED ([CBTRRF] ASC)
);

