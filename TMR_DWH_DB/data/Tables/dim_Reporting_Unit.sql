CREATE TABLE [data].[dim_Reporting_Unit] (
    [PK_Reporting_UnitID]  INT            IDENTITY (0, 1) NOT NULL,
    [BK_Reporting_Unit]    NVARCHAR (3)   NULL,
    [Reporting_Unit_Label] NVARCHAR (160) NULL,
    [GP_ReportingUnit]     NVARCHAR (67)  NULL,
    [StartDate]            DATETIME       NULL,
    [EndDate]              DATETIME       NULL,
    [CurrentFlag]          NVARCHAR (1)   NULL,
    [FK_BuildID]           INT            NULL,
    CONSTRAINT [PK_Reporting_UnitID] PRIMARY KEY CLUSTERED ([PK_Reporting_UnitID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UINDX_Filtered_DimReportingUnit_BKReportingUnit]
    ON [data].[dim_Reporting_Unit]([BK_Reporting_Unit] ASC) WHERE ([CurrentFlag]='Y');


GO
CREATE UNIQUE NONCLUSTERED INDEX [UNQINDX_dimReportingUnit_BK_ReportingUnit]
    ON [data].[dim_Reporting_Unit]([BK_Reporting_Unit] ASC);

