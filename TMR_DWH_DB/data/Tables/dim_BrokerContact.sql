CREATE TABLE [data].[dim_BrokerContact] (
    [PK_BrokerContactID] INT           IDENTITY (0, 1) NOT NULL,
    [BK_BrokerContact]   NVARCHAR (8)  NOT NULL,
    [BrokerContactName]  NVARCHAR (25) NULL,
    [CreateDate]         DATETIME      DEFAULT (getdate()) NOT NULL,
    [UpdateDate]         DATETIME      NULL,
    [FK_BuildID]         INT           NULL,
    CONSTRAINT [PK_BrokerContactID] PRIMARY KEY CLUSTERED ([PK_BrokerContactID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UNQINDX_dimBrokerContact_BK_Location]
    ON [data].[dim_BrokerContact]([BK_BrokerContact] ASC);

