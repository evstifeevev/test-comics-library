use [Saratov.Evstifeev.TestComicsLibrary.LibraryDB]

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'UserRoles'))
BEGIN
	declare @SuperUserId uniqueIdentifier 
	select top 1 @SuperUserId = Id 
	from dbo.Users
	
	if(@SuperUserId is not null)
	begin
		if (not exists (select top 1 Id from dbo.UserRoles where Name = 'Administrator'))
			insert into dbo.UserRoles (Id, Name, CreatedAt, CreatedBy)
			values (NEWID(), 'Administrator', GETDATE(), @SuperUserId)
		if (not exists (select top 1 Id from dbo.UserRoles where Name = 'Moderator'))
			insert into dbo.UserRoles (Id, Name, CreatedAt, CreatedBy)
			values (NEWID(), 'Moderator', GETDATE(), @SuperUserId)
		if (not exists (select top 1 Id from dbo.UserRoles where Name = 'SuperUser'))
			insert into dbo.UserRoles (Id, Name, CreatedAt, CreatedBy)
			values (NEWID(), 'SuperUser', GETDATE(), @SuperUserId)
		if (not exists (select top 1 Id from dbo.UserRoles where Name = 'User'))
			insert into dbo.UserRoles (Id, Name, CreatedAt, CreatedBy)
			values (NEWID(), 'User', GETDATE(), @SuperUserId)
	end
END