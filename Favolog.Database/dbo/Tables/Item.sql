CREATE TABLE [dbo].[Item]
(
	[Id] INT IDENTITY(1,1) NOT NULL,	
	[CatalogId] INT NOT NULL, 
	[Title] NVARCHAR(1000),	
	[ImageName] NVARCHAR(1000),
	[Comments] NVARCHAR(2000),
	[Url] NVARCHAR(1000),
	[SourceImageUrl] NVARCHAR(1000),
    [OriginalUrl] NVARCHAR(1000), 
    CONSTRAINT [PK_Item] PRIMARY KEY ([Id]),
	CONSTRAINT [FK_Item_Catalog] FOREIGN KEY ([CatalogId]) REFERENCES [Catalog]([Id]), 
)
