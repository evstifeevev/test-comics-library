USE [Saratov.Evstifeev.TestComicsLibrary.LibraryDB]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 6/15/2022 5:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 6/15/2022 5:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/15/2022 5:54:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[IsDeleted] [bit] NULL,
	[UserRoleId] [uniqueidentifier] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[PasswordHashCode] [int] NOT NULL,
	[IsBlocked] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UserRoles] ([Id], [Name], [CreatedAt], [CreatedBy], [IsDeleted]) VALUES (N'c9b597b0-bacc-4195-ab8d-04f2fb641ba4', N'Moderator', CAST(N'2022-06-15T17:41:54.453' AS DateTime), N'0af5e4b4-66b6-410a-9f07-b47d1286214d', NULL)
INSERT [dbo].[UserRoles] ([Id], [Name], [CreatedAt], [CreatedBy], [IsDeleted]) VALUES (N'8b16494a-88a5-470f-a2f5-34a9c8789bfd', N'User', CAST(N'2022-06-15T17:41:54.457' AS DateTime), N'0af5e4b4-66b6-410a-9f07-b47d1286214d', NULL)
INSERT [dbo].[UserRoles] ([Id], [Name], [CreatedAt], [CreatedBy], [IsDeleted]) VALUES (N'9d23e4f0-44d8-4760-9b0a-45c0335f1123', N'Administrator', CAST(N'2022-06-15T17:41:54.450' AS DateTime), N'0af5e4b4-66b6-410a-9f07-b47d1286214d', NULL)
INSERT [dbo].[UserRoles] ([Id], [Name], [CreatedAt], [CreatedBy], [IsDeleted]) VALUES (N'1fe0d3d9-f389-45bc-b8a9-ded9a5d94db2', N'SuperUser', CAST(N'2022-06-15T17:41:54.453' AS DateTime), N'0af5e4b4-66b6-410a-9f07-b47d1286214d', NULL)
GO
INSERT [dbo].[Users] ([Id], [Name], [CreatedAt], [IsDeleted], [UserRoleId], [CreatedBy], [PasswordHashCode], [IsBlocked]) VALUES (N'0af5e4b4-66b6-410a-9f07-b47d1286214d', N'System', CAST(N'2022-06-15T17:32:25.727' AS DateTime), NULL, NULL, NULL, 1993068193, 0)
INSERT [dbo].[Users] ([Id], [Name], [CreatedAt], [IsDeleted], [UserRoleId], [CreatedBy], [PasswordHashCode], [IsBlocked]) VALUES (N'7ffc512d-73b2-4b89-a6c5-fbc7e7d06034', N'SuperUser', CAST(N'2022-06-15T17:35:02.683' AS DateTime), NULL, NULL, NULL, 2091418252, 0)
GO
ALTER TABLE [dbo].[Images] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsBlocked]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([UserRoleId])
REFERENCES [dbo].[UserRoles] ([Id])
GO
