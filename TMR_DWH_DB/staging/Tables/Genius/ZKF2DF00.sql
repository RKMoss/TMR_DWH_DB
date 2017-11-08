CREATE TABLE [staging].[ZKF2DF00] (
    [rid]     INT          IDENTITY (1, 1) NOT NULL,
    [F2FANO]  NUMERIC (9)  NULL,
    [F2F2MC]  NUMERIC (9)  NULL,
    [F2FPCD]  NVARCHAR (3) NULL,
    [BuildID] INT          NULL,
    PRIMARY KEY CLUSTERED ([rid] ASC)
);

