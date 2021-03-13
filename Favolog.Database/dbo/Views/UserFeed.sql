CREATE VIEW [dbo].[vw_UserFeed]
AS SELECT CatalogId, Catalog.Name as CatalogName, UserId, [User].Username, [User].ProfileImage, Item.Id, Title, ImageName, Url, 
Comment, AudienceType
FROM dbo.Catalog
INNER JOIN dbo.Item ON Item.CatalogId = Catalog.Id
INNER JOIN dbo.[User] ON Catalog.UserId = [User].Id
