USE [master]
GO
/****** Object:  Database [FullStackRibShack]    Script Date: 3/8/2021 7:36:24 PM ******/
CREATE DATABASE [FullStackRibShack]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FullStackRibShack', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FullStackRibShack.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FullStackRibShack_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FullStackRibShack_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FullStackRibShack] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FullStackRibShack].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FullStackRibShack] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FullStackRibShack] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FullStackRibShack] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FullStackRibShack] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FullStackRibShack] SET ARITHABORT OFF 
GO
ALTER DATABASE [FullStackRibShack] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FullStackRibShack] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FullStackRibShack] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FullStackRibShack] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FullStackRibShack] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FullStackRibShack] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FullStackRibShack] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FullStackRibShack] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FullStackRibShack] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FullStackRibShack] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FullStackRibShack] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FullStackRibShack] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FullStackRibShack] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FullStackRibShack] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FullStackRibShack] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FullStackRibShack] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FullStackRibShack] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FullStackRibShack] SET RECOVERY FULL 
GO
ALTER DATABASE [FullStackRibShack] SET  MULTI_USER 
GO
ALTER DATABASE [FullStackRibShack] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FullStackRibShack] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FullStackRibShack] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FullStackRibShack] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FullStackRibShack] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FullStackRibShack', N'ON'
GO
ALTER DATABASE [FullStackRibShack] SET QUERY_STORE = OFF
GO
USE [FullStackRibShack]
GO
/****** Object:  Table [dbo].[MenuCategory]    Script Date: 3/8/2021 7:36:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuCategory] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MenuCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuItem]    Script Date: 3/8/2021 7:36:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](150) NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[Avaliable] [bit] NOT NULL,
	[MenuCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_MenuItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 3/8/2021 7:36:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](100) NOT NULL,
	[Date] [datetime] NOT NULL,
	[TimeOpen] [nvarchar](10) NOT NULL,
	[TimeClosed] [nvarchar](10) NOT NULL,
	[EventCanceled] [bit] NOT NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MenuCategory] ON 

INSERT [dbo].[MenuCategory] ([Id], [MenuCategory]) VALUES (1, N'BBQ Sandwiches')
INSERT [dbo].[MenuCategory] ([Id], [MenuCategory]) VALUES (2, N'BBQ Dinners')
INSERT [dbo].[MenuCategory] ([Id], [MenuCategory]) VALUES (3, N'Specialty Sandwiches')
INSERT [dbo].[MenuCategory] ([Id], [MenuCategory]) VALUES (4, N'Chicken')
INSERT [dbo].[MenuCategory] ([Id], [MenuCategory]) VALUES (5, N'Rib Dinners')
INSERT [dbo].[MenuCategory] ([Id], [MenuCategory]) VALUES (6, N'Just Ribs')
INSERT [dbo].[MenuCategory] ([Id], [MenuCategory]) VALUES (7, N'Meat by the Pound')
INSERT [dbo].[MenuCategory] ([Id], [MenuCategory]) VALUES (8, N'Side Dishes')
INSERT [dbo].[MenuCategory] ([Id], [MenuCategory]) VALUES (9, N'Other Stuff')
INSERT [dbo].[MenuCategory] ([Id], [MenuCategory]) VALUES (10, N'Salads')
INSERT [dbo].[MenuCategory] ([Id], [MenuCategory]) VALUES (11, N'Dessert')
SET IDENTITY_INSERT [dbo].[MenuCategory] OFF
SET IDENTITY_INSERT [dbo].[MenuItem] ON 

INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (1, N'Pulled Pork', NULL, CAST(7.39 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (2, N'Smoked Turkey', NULL, CAST(7.39 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (3, N'Smoked Ham', NULL, CAST(7.39 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (4, N'Beef Brisket', NULL, CAST(7.69 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (5, N'Ribs & One Meat Dinner', N'Three ribs, plus your choice of pulled pork, brisket, turkey, or ham', CAST(16.79 AS Decimal(10, 2)), 1, 2)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (6, N'One Meat Dinner', N'Choose from: pulled pork, turkey, ham, or brisket ', CAST(11.99 AS Decimal(10, 2)), 1, 2)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (7, N'Two Meat Dinner', N'Choose from: pulled pork, smoked turkey, smoked ham, or brisket', CAST(14.99 AS Decimal(10, 2)), 1, 2)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (8, N'The Tennessee Twist', N'Pulled pork tossed in a sweet-hot BBQ glaze, bacon, pepper jack cheese, and a BBQ mayo, topped with jalapenos', CAST(9.99 AS Decimal(10, 2)), 1, 3)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (9, N'Honky Tonk Pork Sandwich', N'Pulled pork served on a toasted bun, with spicy cole slaw and our fancy sauce', CAST(8.59 AS Decimal(10, 2)), 1, 3)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (10, N'High on the Hog', N'Pulled pork and sliced sausage on a bun', CAST(8.59 AS Decimal(10, 2)), 1, 3)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (11, N'Smoked Chicken Dinner', N'Served with one side dish and toast', CAST(11.59 AS Decimal(10, 2)), 1, 4)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (12, N'Half Chicken', N'(No sides)', CAST(9.59 AS Decimal(10, 2)), 1, 4)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (13, N'Full Chicken', N'(No sides)', CAST(16.59 AS Decimal(10, 2)), 1, 4)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (14, N'Rib Dinner', N'(Half Slab)', CAST(16.59 AS Decimal(10, 2)), 1, 5)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (15, N'Slab Dinner', N'(One Full Slab)', CAST(20.99 AS Decimal(10, 2)), 1, 5)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (16, N'Full-Slab of Ribs', NULL, CAST(17.99 AS Decimal(10, 2)), 1, 6)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (17, N'Half-Slab of Ribs', NULL, CAST(11.99 AS Decimal(10, 2)), 1, 6)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (18, N'Beef Brisket', NULL, CAST(19.99 AS Decimal(10, 2)), 1, 7)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (19, N'Pulled Pork, Turkey, Ham, Sausage', NULL, CAST(18.99 AS Decimal(10, 2)), 1, 7)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (20, N'BBQ Beans', NULL, CAST(2.99 AS Decimal(10, 2)), 1, 8)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (21, N'Potato Salad', NULL, CAST(2.99 AS Decimal(10, 2)), 1, 8)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (22, N'Cole Slaw', NULL, CAST(2.99 AS Decimal(10, 2)), 1, 8)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (23, N'Seasonal Vegetable', NULL, CAST(2.99 AS Decimal(10, 2)), 1, 8)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (24, N'Red Beans & Rice', NULL, CAST(2.99 AS Decimal(10, 2)), 1, 8)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (25, N'Side Salad', NULL, CAST(4.99 AS Decimal(10, 2)), 1, 9)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (26, N'French Fries', NULL, CAST(3.99 AS Decimal(10, 2)), 1, 9)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (27, N'Onion Rings', NULL, CAST(3.99 AS Decimal(10, 2)), 1, 9)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (28, N'The Boss', N'Sliced brisket, turkey, & ham, with cheese', CAST(8.99 AS Decimal(10, 2)), 1, 10)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (29, N'Stacked Salad', N'Warm pulled pork with BBQ sauce on top', CAST(8.99 AS Decimal(10, 2)), 1, 10)
INSERT [dbo].[MenuItem] ([Id], [Name], [Description], [Price], [Avaliable], [MenuCategoryId]) VALUES (30, N'Pie', N'Apple, Cherry, or Chocolate, ', CAST(5.99 AS Decimal(10, 2)), 1, 11)
SET IDENTITY_INSERT [dbo].[MenuItem] OFF
SET IDENTITY_INSERT [dbo].[Schedule] ON 

INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (1, N'21st and Broadway', CAST(N'2021-01-01T00:00:00.000' AS DateTime), N'10:30am', N'3pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (2, N'Riverfront Park', CAST(N'2021-01-05T00:00:00.000' AS DateTime), N'11am', N'2pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (3, N'Red Caboose Park', CAST(N'2021-01-10T00:00:00.000' AS DateTime), N'11am', N'4pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (4, N'Nashville West', CAST(N'2021-01-15T00:00:00.000' AS DateTime), N'10:30am', N'2pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (5, N'Grand Ole Opry', CAST(N'2021-01-20T00:00:00.000' AS DateTime), N'11am', N'1:30pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (6, N'Ascend Amphitheater', CAST(N'2021-03-01T00:00:00.000' AS DateTime), N'11am', N'1:30pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (7, N'Riverfront Park', CAST(N'2021-03-05T00:00:00.000' AS DateTime), N'11am', N'1:30pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (8, N'100 Oaks Mall', CAST(N'2021-03-10T00:00:00.000' AS DateTime), N'11am', N'10:30pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (9, N'1st and Broadway', CAST(N'2021-03-15T00:00:00.000' AS DateTime), N'10am', N'1pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (10, N'6nd and Union', CAST(N'2021-03-20T00:00:00.000' AS DateTime), N'11am', N'3pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (17, N'Baxter Village', CAST(N'2021-02-01T00:00:00.000' AS DateTime), N'1pm', N'3pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (18, N'McKay''s Bookstore', CAST(N'2021-01-31T00:00:00.000' AS DateTime), N'1pm', N'3pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (19, N'Nashville Fairgrounds', CAST(N'2021-02-02T00:00:00.000' AS DateTime), N'1pm', N'3pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (20, N'Doggy Festival', CAST(N'2021-02-06T00:00:00.000' AS DateTime), N'10am', N'2pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (21, N'7th and Union', CAST(N'2021-02-06T00:00:00.000' AS DateTime), N'10am', N'2pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (22, N'Percy Warner Park', CAST(N'2021-02-06T00:00:00.000' AS DateTime), N'10am', N'2pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (23, N'21st and Broadway', CAST(N'2021-02-06T00:00:00.000' AS DateTime), N'10am', N'2pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (24, N'Liepers Fork', CAST(N'2021-03-13T00:00:00.000' AS DateTime), N'12pm', N'3pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (25, N'Nashville West', CAST(N'2021-03-22T00:00:00.000' AS DateTime), N'11pm', N'2pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (26, N'7th and Union', CAST(N'2021-04-02T00:00:00.000' AS DateTime), N'12pm', N'2pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (27, N'Nashville Fairgrounds', CAST(N'2021-04-08T00:00:00.000' AS DateTime), N'12pm', N'5pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (28, N'Percy Warner Park', CAST(N'2021-04-14T00:00:00.000' AS DateTime), N'12pm', N'2pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (29, N'Riverfront Park', CAST(N'2021-04-15T00:00:00.000' AS DateTime), N'11pm', N'3pm', 0)
SET IDENTITY_INSERT [dbo].[Schedule] OFF
ALTER TABLE [dbo].[MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_MenuItem_MenuCategory] FOREIGN KEY([MenuCategoryId])
REFERENCES [dbo].[MenuCategory] ([Id])
GO
ALTER TABLE [dbo].[MenuItem] CHECK CONSTRAINT [FK_MenuItem_MenuCategory]
GO
USE [master]
GO
ALTER DATABASE [FullStackRibShack] SET  READ_WRITE 
GO
