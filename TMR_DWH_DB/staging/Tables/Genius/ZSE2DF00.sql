﻿CREATE TABLE [staging].[ZSE2DF00] (
    [E2E0CD]  INT          NOT NULL,
    [E2E2CD]  INT          NOT NULL,
    [E2MANU]  NVARCHAR (6) NULL,
    [E2MASE]  NVARCHAR (3) NULL,
    [E2MAEO]  NVARCHAR (3) NULL,
    [E2RKRS]  NVARCHAR (2) NULL,
    [E2SDSQ]  NVARCHAR (3) NULL,
    [E2SFEN]  NVARCHAR (3) NULL,
    [E2FANO]  DECIMAL (9)  NULL,
    [E2FBCD]  DECIMAL (3)  NULL,
    [E2PRCO]  NVARCHAR (6) NULL,
    [E2KPSQ]  NVARCHAR (3) NULL,
    [E2RECD]  NVARCHAR (3) NULL,
    [E2SXCD]  NVARCHAR (3) NULL,
    [E2RGCD]  NVARCHAR (3) NULL,
    [E2C1CD]  NVARCHAR (4) NULL,
    [E2C2CD]  NVARCHAR (4) NULL,
    [E2C3CD]  NVARCHAR (4) NULL,
    [E2C4CD]  NVARCHAR (4) NULL,
    [E2G1CD]  NVARCHAR (8) NULL,
    [E2G2CD]  NVARCHAR (8) NULL,
    [E2T1CD]  NVARCHAR (4) NULL,
    [E2T2CD]  NVARCHAR (4) NULL,
    [E2A1CD]  NVARCHAR (5) NULL,
    [E2A2CD]  NVARCHAR (5) NULL,
    [E2A3CD]  NVARCHAR (5) NULL,
    [E2SFL1]  NVARCHAR (2) NULL,
    [E2SFV1]  NVARCHAR (1) NULL,
    [E2SFL2]  NVARCHAR (2) NULL,
    [E2SFV2]  NVARCHAR (1) NULL,
    [E2SFL3]  NVARCHAR (2) NULL,
    [E2SFV3]  NVARCHAR (1) NULL,
    [E2SFL4]  NVARCHAR (2) NULL,
    [E2SFV4]  NVARCHAR (1) NULL,
    [E2SFL5]  NVARCHAR (2) NULL,
    [E2SFV5]  NVARCHAR (1) NULL,
    [E2SFL6]  NVARCHAR (2) NULL,
    [E2SFV6]  NVARCHAR (1) NULL,
    [E2CVSQ]  NVARCHAR (3) NULL,
    [E2CVEN]  NVARCHAR (3) NULL,
    [E2CTCC]  NVARCHAR (3) NULL,
    [E2CTCO]  NVARCHAR (4) NULL,
    [E2RTCD]  NVARCHAR (3) NULL,
    [E2CVN3]  DECIMAL (9)  NULL,
    [E2CVT1]  NVARCHAR (1) NULL,
    [E2CVN4]  DECIMAL (9)  NULL,
    [E2CVT2]  NVARCHAR (1) NULL,
    [E2E2F1]  NVARCHAR (1) NULL,
    [E2E2F2]  NVARCHAR (1) NULL,
    [E2E2F3]  NVARCHAR (1) NULL,
    [E2E2F4]  NVARCHAR (1) NULL,
    [E2E2F5]  NVARCHAR (1) NULL,
    [E2E2F6]  NVARCHAR (1) NULL,
    [E2E2F7]  NVARCHAR (1) NULL,
    [E2E2F8]  NVARCHAR (1) NULL,
    [BuildID] INT          NULL,
    CONSTRAINT [PK_StagingZSE2DF00_E2E0CD] PRIMARY KEY CLUSTERED ([E2E0CD] ASC, [E2E2CD] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NCINDX_StagZSE2_E2SFV6]
    ON [staging].[ZSE2DF00]([E2SFV6] ASC);
