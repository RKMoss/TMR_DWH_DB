﻿CREATE TABLE [staging].[ZUTRDF00] (
    [rid]     INT             IDENTITY (1, 1) NOT NULL,
    [TRMANU]  NVARCHAR (6)    NULL,
    [TRMASE]  NVARCHAR (3)    NULL,
    [TRTRSQ]  NVARCHAR (2)    NULL,
    [TRTRNG]  NUMERIC (9)     NULL,
    [TRCTCD]  NVARCHAR (3)    NULL,
    [TRRYCD]  NVARCHAR (3)    NULL,
    [TRCCCD]  NVARCHAR (3)    NULL,
    [TRPSCD]  NVARCHAR (3)    NULL,
    [TRACCR]  NVARCHAR (3)    NULL,
    [TROGCU]  NVARCHAR (3)    NULL,
    [TRCNTY]  NVARCHAR (3)    NULL,
    [TRPRCD]  NVARCHAR (3)    NULL,
    [TRTRDC]  NUMERIC (3)     NULL,
    [TRTENC]  NUMERIC (3)     NULL,
    [TRTRAD]  NUMERIC (7)     NULL,
    [TRTRWC]  NUMERIC (3)     NULL,
    [TRTRSC]  NUMERIC (3)     NULL,
    [TRNOIN]  NUMERIC (2)     NULL,
    [TRFRCD]  NVARCHAR (3)    NULL,
    [TRTRDS]  NUMERIC (7)     NULL,
    [TRTRDE]  NUMERIC (7)     NULL,
    [TRTRMS]  NVARCHAR (1)    NULL,
    [TRTRSX]  NUMERIC (15, 8) NULL,
    [TRTRLF]  NVARCHAR (1)    NULL,
    [TRTRPF]  NVARCHAR (1)    NULL,
    [TRSDLP]  NVARCHAR (1)    NULL,
    [TRTRXR]  NUMERIC (15, 8) NULL,
    [TRTRER]  NUMERIC (15, 8) NULL,
    [TRTCRD]  NUMERIC (7)     NULL,
    [TRTFL1]  NVARCHAR (1)    NULL,
    [TRTFL2]  NVARCHAR (1)    NULL,
    [TRTFL3]  NVARCHAR (1)    NULL,
    [TRTFL4]  NVARCHAR (1)    NULL,
    [TRTDT1]  NUMERIC (7)     NULL,
    [BuildID] INT             NULL,
    PRIMARY KEY CLUSTERED ([rid] ASC)
);

