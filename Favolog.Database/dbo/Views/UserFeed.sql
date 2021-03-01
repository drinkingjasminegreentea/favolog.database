CREATE VIEW [dbo].[vw_UserFeed]
AS SELECT CatalogItem.Id, CatalogId, Catalog.Name as CatalogName, UserId, [User].Username, [User].ProfileImage, ItemId, Title, ImageName, Url, 
Comments, AudienceType
FROM dbo.Catalog
INNER JOIN dbo.CatalogItem ON Catalog.Id = CatalogItem.CatalogId
INNER JOIN dbo.Item ON CatalogItem.ItemId = Item.Id
INNER JOIN dbo.[User] ON Catalog.UserId = [User].Id
