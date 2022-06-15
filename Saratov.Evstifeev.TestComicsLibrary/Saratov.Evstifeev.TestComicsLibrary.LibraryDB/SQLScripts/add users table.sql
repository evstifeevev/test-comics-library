use [Saratov.Evstifeev.TestComicsLibrary.LibraryDB]

drop table if exists dbo.Users

create table Users (
	Id uniqueidentifier PRIMARY KEY,
	Name nvarchar(250) not null,
	CreatedAt datetime not null,
	IsDeleted bit null,
	UserRoleId uniqueidentifier null references UserRoles (Id),
	CreatedBy uniqueidentifier null,
	PasswordHashCode int not null,
	IsBlocked bit null default 0
)