USE [master]
GO
/****** Object:  Database [lab]    Script Date: 01/11/2023 7:53:24 CH ******/
CREATE DATABASE [lab]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'lab', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.DUANC\MSSQL\DATA\lab.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'lab_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.DUANC\MSSQL\DATA\lab_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [lab].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [lab] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [lab] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [lab] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [lab] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [lab] SET ARITHABORT OFF 
GO
ALTER DATABASE [lab] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [lab] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [lab] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [lab] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [lab] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [lab] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [lab] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [lab] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [lab] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [lab] SET  DISABLE_BROKER 
GO
ALTER DATABASE [lab] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [lab] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [lab] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [lab] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [lab] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [lab] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [lab] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [lab] SET RECOVERY FULL 
GO
ALTER DATABASE [lab] SET  MULTI_USER 
GO
ALTER DATABASE [lab] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [lab] SET DB_CHAINING OFF 
GO
ALTER DATABASE [lab] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [lab] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [lab] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'lab', N'ON'
GO
USE [lab]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 01/11/2023 7:53:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 01/11/2023 7:53:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 01/11/2023 7:53:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 01/11/2023 7:53:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 01/11/2023 7:53:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 01/11/2023 7:53:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 01/11/2023 7:53:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 01/11/2023 7:53:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 01/11/2023 7:53:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorId] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](max) NOT NULL,
	[Authoraddress] [nvarchar](max) NOT NULL,
	[Authoremail] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 01/11/2023 7:53:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 01/11/2023 7:53:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[price] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[img] [nvarchar](max) NOT NULL,
	[AuthorId] [int] NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 01/11/2023 7:53:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Purchase_date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231021065137_intialCreate', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231024185333_duaa', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231025174054_duaaaaaaa', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231026091646_add1', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231026100606_add123', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231026101200_add1234', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231026102812_add12345', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231030171319_12', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231101030254_intialCreate', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231101031737_Category', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231101041248_Category', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231101112750_1234', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231101113439_12345', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231101113542_123456', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231101115442_1234567', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231101120241_add', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231101123302_aaa', N'6.0.23')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'192a44a5-6374-4dc0-922d-fc8d51ab24e6', N'User', N'USER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'AD', N'ADMIN', N'ADMIN', N'ADMIN')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ea9e50b1-2ec4-404e-9b59-e2bc8fa46caf', N'Staff', N'STAFF', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cddc7567-1104-4e62-9171-cbd05e0c84f9', N'AD')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'24e4bde8-5801-48ef-8e10-ac68cc40fadd', N'ea9e50b1-2ec4-404e-9b59-e2bc8fa46caf')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'24e4bde8-5801-48ef-8e10-ac68cc40fadd', N'Staff@gmail.com', N'STAFF@GMAIL.COM', N'Staff@gmail.com', N'STAFF@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEHZcwv7z3s46q0NSE+FmNhjHwUM4lX6wBrxpdcvy91Ootow2df43gB5/TeMhKcOBkQ==', N'5XKKPUEEENPXGL4REEO5W4IZQRMUCBYD', N'd53a7b2a-7647-4205-bfb5-dba43d0d9e19', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'63ba9078-66a7-418b-b772-1c01187b3c0b', N'nam1@gmail.com', N'NAM1@GMAIL.COM', N'nam1@gmail.com', N'NAM1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGEuRQvkONqf1jAavxe1EFsemo11b0uJBMrXfJl5jWCZx1LYRLrowZuAyaOPHIy1lA==', N'FH7XT5L66HELOGVGBLNJ3PJ4H2TKVCQX', N'bdd77993-0839-4f8c-a5e6-52315bae5354', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'72c24b95-04c3-4dce-b7e2-33a953488cdd', N'test1@gmail.com', N'TEST1@GMAIL.COM', N'test1@gmail.com', N'TEST1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEIW8gk3+Rgo8Z0gRdK6nXNywEzZ/1iBHC1UAeEINi4DcA8+IDTV6imvnu6YnD8Wutg==', N'AKDKE2PLCXWVXX3E4YFJBGK7TK6ZH7IW', N'a1b88db4-4bba-4f0b-8296-1fc9b261dc78', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cddc7567-1104-4e62-9171-cbd05e0c84f9', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEAwKF2PkBo6Z8D+4dN/ejHT3LGTduJhA+KrIZF1amYMRfmK+Wmpb5ckiPAc5WA+0nw==', N'ZD4NWYVT52BENQA3OMCLUDBTSCDMWLIW', N'cb15c69c-30ac-4008-ad58-cf9820cd92c0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f086f7f0-4e77-48a7-8390-5125d745f506', N'test2@gmail.com', N'TEST2@GMAIL.COM', N'test2@gmail.com', N'TEST2@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEH21CmOLp8XBDYOTMgDITjTUU2j51JsAiknpFyljj6/2C/0aP49HsQr95Jy2Z98ssA==', N'4GO5VWR2EYOIRJWC2O6VABVZKVL5QV4I', N'aa3ea1c6-a7a5-4754-a06f-ac72a34d3d7d', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([AuthorId], [AuthorName], [Authoraddress], [Authoremail]) VALUES (1, N'Joseph Murphyc', N'American', N'Joseph Murphyc@gmail.com')
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [Authoraddress], [Authoremail]) VALUES (2, N'Giang Đinh', N'ádfsd', N'ádfasdf')
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [Authoraddress], [Authoremail]) VALUES (3, N'Văn Thuỵ', N'áedfadsf', N'ádfasdf')
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [Authoraddress], [Authoremail]) VALUES (4, N'Bộ Giáo Dục', N'American', N'Josep@gmail.com')
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [Authoraddress], [Authoremail]) VALUES (5, N'Alex Ferguson', N'American', N'asdcaMurphyc@gmail.com')
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [Authoraddress], [Authoremail]) VALUES (6, N'Fiora Lee', N'American', N'Josephmoi@gmail.com')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Kĩ năng sống')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Kids')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (4, N'stories')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (5, N'life')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [price], [quantity], [img], [AuthorId], [CategoryId]) VALUES (7, N'English Kids Story Book ', 5, 10, N'https://5.imimg.com/data5/SELLER/Default/2021/2/SA/IQ/HS/49559104/img-20210211-121925.jpg', 5, 3)
INSERT [dbo].[Product] ([Id], [Name], [price], [quantity], [img], [AuthorId], [CategoryId]) VALUES (8, N'pinochino', 10, 10, N'data:image/jpeg;base64,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', 6, 5)
INSERT [dbo].[Product] ([Id], [Name], [price], [quantity], [img], [AuthorId], [CategoryId]) VALUES (9, N'Great Children', 20, 3, N'https://www.businessinsider.in/thumb/msid-78442712,width-640,resizemode-4/Master.jpg', 1, 4)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shop] ON 

INSERT [dbo].[Shop] ([Id], [ProductName], [ProductPrice], [Quantity], [Purchase_date]) VALUES (16, N'pinochino', CAST(10.00 AS Decimal(18, 2)), 2, CAST(N'2023-11-01T19:41:11.6740591' AS DateTime2))
INSERT [dbo].[Shop] ([Id], [ProductName], [ProductPrice], [Quantity], [Purchase_date]) VALUES (17, N'pinochino', CAST(10.00 AS Decimal(18, 2)), 4, CAST(N'2023-11-01T19:43:29.3655923' AS DateTime2))
INSERT [dbo].[Shop] ([Id], [ProductName], [ProductPrice], [Quantity], [Purchase_date]) VALUES (18, N'English Kids Story Book ', CAST(5.00 AS Decimal(18, 2)), 2, CAST(N'2023-11-01T19:49:41.5124557' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Shop] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 01/11/2023 7:53:24 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 01/11/2023 7:53:24 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 01/11/2023 7:53:24 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 01/11/2023 7:53:24 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 01/11/2023 7:53:24 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 01/11/2023 7:53:24 CH ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 01/11/2023 7:53:24 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_AuthorId]    Script Date: 01/11/2023 7:53:24 CH ******/
CREATE NONCLUSTERED INDEX [IX_Product_AuthorId] ON [dbo].[Product]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_CategoryId]    Script Date: 01/11/2023 7:53:24 CH ******/
CREATE NONCLUSTERED INDEX [IX_Product_CategoryId] ON [dbo].[Product]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (N'') FOR [img]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Author_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Author] ([AuthorId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Author_AuthorId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [lab] SET  READ_WRITE 
GO
