CREATE TABLE [dbo].[DISCOUNTS] (
    [Id]                    UNIQUEIDENTIFIER NOT NULL,
    [ProductTypeId]         UNIQUEIDENTIFIER NOT NULL,
    [SessionsPerWeek1]      FLOAT (53)       NULL,
    [SessionsPerWeek2]      FLOAT (53)       NULL,
    [SessionsPerWeek3]      FLOAT (53)       NULL,
    [SessionsPerWeek4]      FLOAT (53)       NULL,
    [SessionsPerWeek5]      FLOAT (53)       NULL,
    [SessionsPerWeek6]      FLOAT (53)       NULL,
    [StartDate]             DATETIME         NOT NULL,
    [EndDate]               DATETIME         NOT NULL,
    [AudUsu]                UNIQUEIDENTIFIER NOT NULL,
    [SessionsPerWeek7to10]  INT              DEFAULT ((0)) NULL,
    [SessionsPerWeek11to15] INT              DEFAULT ((0)) NULL,
    [SessionsPerWeek16to20] INT              DEFAULT ((0)) NULL,
    [SessionsPerWeek21to30] INT              DEFAULT ((0)) NULL,
    [SessionsPerWeek30to]   INT              DEFAULT ((0)) NULL,
    CONSTRAINT [PK_DISCOUNTS] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DISCOUNTS_PRODUCT_TYPES] FOREIGN KEY ([ProductTypeId]) REFERENCES [dbo].[PRODUCT_TYPES] ([Id]),
    CONSTRAINT [FK_DISCOUNTS_USERS] FOREIGN KEY ([AudUsu]) REFERENCES [dbo].[USERS] ([Id])
);

