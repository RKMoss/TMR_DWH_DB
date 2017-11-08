CREATE TABLE [staging].[ZHK2DF00] (
    [rid]     INT          IDENTITY (1, 1) NOT NULL,
    [K2C2GC]  NVARCHAR (4) NULL,
    [K2K2MB]  NVARCHAR (4) NULL,
    [BuildID] INT          NULL,
    PRIMARY KEY CLUSTERED ([rid] ASC)
);

