CREATE TABLE [dbo].[CLIENT_WEEK_SESSIONS] (
    [Id]                      UNIQUEIDENTIFIER NOT NULL,
    [ClientId]                UNIQUEIDENTIFIER NOT NULL,
    [ProductId]               UNIQUEIDENTIFIER NOT NULL,
    [StartDate]               DATETIME         NOT NULL,
    [EndDate]                 DATETIME         NOT NULL,
    [MondaySessions]          INT              NULL,
    [TuesdaySessions]         INT              NULL,
    [WednesdaySessions]       INT              NULL,
    [ThursdaySessions]        INT              NULL,
    [FridaySessions]          INT              NULL,
    [SaturdaySessions]        INT              NULL,
    [SundaySessions]          INT              NULL,
    [ExtraDiscountPercentage] FLOAT (53)       NULL,
    [IsBiWeekly]              INT              DEFAULT ((0)) NOT NULL,
    [ExtraDiscountQuantity]   FLOAT (53)       DEFAULT ((0)) NULL,
    CONSTRAINT [PK_CLIENT_WEEK_SESSIONS] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CLIENTS_CLIENT_WEEK_SESSIONS] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[CLIENTS] ([Id]),
    CONSTRAINT [FK_PRODUCTS_CLIENT_WEEK_SESSIONS] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[PRODUCTS] ([Id])
);

