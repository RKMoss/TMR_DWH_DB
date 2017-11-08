CREATE TABLE [data].[dim_RIType] (
    [PK_RITypeID] INT           IDENTITY (0, 1) NOT NULL,
    [BK_RIType]   NVARCHAR (3)  NOT NULL,
    [RITypeName]  NVARCHAR (30) NULL,
    [CreateDate]  DATETIME      DEFAULT (getdate()) NOT NULL,
    [UpdateDate]  DATETIME      NULL,
    [FK_BuildID]  INT           NULL,
    CONSTRAINT [PK_RITypeID] PRIMARY KEY CLUSTERED ([PK_RITypeID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UNQINDX_dimRIType_BK_RIType]
    ON [data].[dim_RIType]([BK_RIType] ASC);

