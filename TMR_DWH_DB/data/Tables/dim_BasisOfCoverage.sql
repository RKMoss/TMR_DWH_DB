CREATE TABLE [data].[dim_BasisOfCoverage] (
    [PK_BasisOfCoverageID] INT            IDENTITY (1, 1) NOT NULL,
    [BK_BasisOfCoverage]   NCHAR (1)      NOT NULL,
    [BasisOfCoverageName]  NVARCHAR (255) NOT NULL,
    [Active]               BIT            DEFAULT ((1)) NOT NULL,
    [CreateDate]           DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    [UpdateDate]           DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    [FK_BuildID]           INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([PK_BasisOfCoverageID] ASC),
    UNIQUE NONCLUSTERED ([BasisOfCoverageName] ASC),
    UNIQUE NONCLUSTERED ([BK_BasisOfCoverage] ASC)
);

