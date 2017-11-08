CREATE TABLE [data].[dim_Location] (
    [PK_LocationID]        INT              IDENTITY (0, 1) NOT NULL,
    [BK_Location]          NVARCHAR (5)     NOT NULL,
    [LocationName]         NVARCHAR (30)    NULL,
    [GP_LocationName]      NVARCHAR (67)    NULL,
    [FK_Parent_LocationID] INT              NULL,
    [BK_Location_CRM]      UNIQUEIDENTIFIER NULL,
    [CRM_Table]            NVARCHAR (1)     NULL,
    [CreateDate]           DATETIME         DEFAULT (getdate()) NULL,
    [UpdateDate]           DATETIME         NULL,
    [FK_BuildID]           INT              NULL,
    CONSTRAINT [PK_LocationID] PRIMARY KEY CLUSTERED ([PK_LocationID] ASC),
    CONSTRAINT [FK_dim_Location_dim_Location] FOREIGN KEY ([FK_Parent_LocationID]) REFERENCES [data].[dim_Location] ([PK_LocationID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UNQINDX_dimLocation_BK_Location]
    ON [data].[dim_Location]([BK_Location] ASC);

