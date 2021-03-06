﻿CREATE TABLE [staging].[ZUGPDF00] (
    [rid]     INT             IDENTITY (1, 1) NOT NULL,
    [GPGSGN]  NUMERIC (11)    NULL,
    [GPGPMT]  NVARCHAR (1)    NULL,
    [GPGPSQ]  NVARCHAR (2)    NULL,
    [GPGPSD]  NUMERIC (7)     NULL,
    [GPGPED]  NUMERIC (7)     NULL,
    [GPGPMS]  NVARCHAR (1)    NULL,
    [GPMANU]  NVARCHAR (6)    NULL,
    [GPMASE]  NVARCHAR (3)    NULL,
    [GPGPEN]  NVARCHAR (3)    NULL,
    [GPPCRD]  NUMERIC (7)     NULL,
    [GPA676]  NVARCHAR (1)    NULL,
    [GPA677]  NVARCHAR (1)    NULL,
    [GPA668]  NVARCHAR (1)    NULL,
    [GPA671]  NVARCHAR (1)    NULL,
    [GPA678]  NVARCHAR (1)    NULL,
    [GPA679]  NVARCHAR (1)    NULL,
    [GPA680]  NVARCHAR (1)    NULL,
    [GPA681]  NVARCHAR (1)    NULL,
    [GPA682]  NVARCHAR (1)    NULL,
    [GPA683]  NVARCHAR (1)    NULL,
    [GPA684]  NVARCHAR (1)    NULL,
    [GPA685]  NVARCHAR (1)    NULL,
    [GPA686]  NVARCHAR (1)    NULL,
    [GPA687]  NVARCHAR (1)    NULL,
    [GPA688]  NVARCHAR (1)    NULL,
    [DVGQCD]  NVARCHAR (10)   NULL,
    [DVCNCK]  NVARCHAR (8)    NULL,
    [DVBNCK]  NVARCHAR (8)    NULL,
    [DVGUCD]  NVARCHAR (10)   NULL,
    [DVGVCD]  NVARCHAR (10)   NULL,
    [DVGWCD]  NVARCHAR (10)   NULL,
    [DVHATX]  NVARCHAR (78)   NULL,
    [DVECNB]  NUMERIC (29, 9) NULL,
    [DVITST]  NVARCHAR (1)    NULL,
    [DVIUST]  NVARCHAR (1)    NULL,
    [DVIVST]  NVARCHAR (1)    NULL,
    [DVIWST]  NVARCHAR (1)    NULL,
    [DVIXST]  NVARCHAR (1)    NULL,
    [DVDAUD]  NUMERIC (7)     NULL,
    [DVDAUT]  NUMERIC (6)     NULL,
    [DVDAUU]  NVARCHAR (10)   NULL,
    [BuildID] INT             NULL,
    PRIMARY KEY CLUSTERED ([rid] ASC)
);

