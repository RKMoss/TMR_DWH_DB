CREATE TABLE [data].[dim_Broker] (
    [PK_BrokerID]   INT              IDENTITY (0, 1) NOT NULL,
    [BK_BrokerCom]  NVARCHAR (44)    NULL,
    [BK_Broker]     NVARCHAR (8)     NOT NULL,
    [BK_CRM_Broker] UNIQUEIDENTIFIER NULL,
    [BrokerName]    NVARCHAR (160)   NULL,
    [CreateDate]    DATETIME         DEFAULT (getdate()) NOT NULL,
    [UpdateDate]    DATETIME         NULL,
    [FK_BuildID]    INT              NULL,
    [BrokerGroup]   NVARCHAR (255)   NULL,
    [BrokerOffice]  NVARCHAR (255)   NULL,
    [DataSource]	NVARCHAR(10)	 NOT NULL, 
    CONSTRAINT [PK_BrokerID] PRIMARY KEY CLUSTERED ([PK_BrokerID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UNCINDX_DimBroker_BKBroker]
    ON [data].[dim_Broker]([BK_Broker] ASC) WHERE ([BK_Broker]<>'XXXXXX');

