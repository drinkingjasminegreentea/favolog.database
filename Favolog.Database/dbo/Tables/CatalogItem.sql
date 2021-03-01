CREATE TABLE [dbo].[CatalogItem]
(
	[Id] INT IDENTITY(1,1) NOT NULL, 
    [CatalogId] INT NOT NULL, 
    [ItemId] INT NOT NULL, 
    [Comments] NVARCHAR(2000),
    CONSTRAINT [PK_CatalogItem] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_CatalogItem_Catalog] FOREIGN KEY ([CatalogId]) REFERENCES [Catalog]([Id]), 
    CONSTRAINT [FK_CatalogItem_Item] FOREIGN KEY ([ItemId]) REFERENCES [Item]([Id])

)
