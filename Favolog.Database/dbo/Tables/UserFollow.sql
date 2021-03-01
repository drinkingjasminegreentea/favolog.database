CREATE TABLE [dbo].[UserFollow]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[UserId] INT NOT NULL,
	[FollowerId] INT NOT NULL, 
    CONSTRAINT [PK_UserFollow] PRIMARY KEY ([Id]), 
    CONSTRAINT [AK_UserFollow_UserId_FollowerId] UNIQUE ([UserId], [FollowerId])
)
