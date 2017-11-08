CREATE TABLE [data].[dim_reportingunit] (
    [PK_ReportingUnitID]      INT              IDENTITY (-1, 1) NOT NULL,
    [BK_CRM_SubBusinessClass] UNIQUEIDENTIFIER NULL,
    [GeniusDuplicate]         BIGINT           NULL,
    [BK_SubBusinessClass]     NVARCHAR (100)   NOT NULL,
    [BK_BusinessClass]        NVARCHAR (100)   NOT NULL,
    [BK_LineOfBusiness]       NVARCHAR (100)   NOT NULL,
    [BK_ReportingUnit]        NVARCHAR (100)   NOT NULL,
    [GP_ReportingUnit]        NVARCHAR (67)    NOT NULL,
    [GP_ClassName]            NVARCHAR (67)    NOT NULL,
    [SubBusinessClassName]    NVARCHAR (100)   NULL,
    [BusinessClassName]       NVARCHAR (100)   NULL,
    [LineOfBusinessName]      NVARCHAR (100)   NULL,
    [ReportingUnitName]       NVARCHAR (160)   NULL,
    [CreateDate]              DATETIME         NOT NULL,
    [UpdateDate]              DATETIME         NULL,
    [FK_BuildID]              INT              NULL,
    CONSTRAINT [PK_ReportingUnitID] PRIMARY KEY CLUSTERED ([PK_ReportingUnitID] ASC)
);

