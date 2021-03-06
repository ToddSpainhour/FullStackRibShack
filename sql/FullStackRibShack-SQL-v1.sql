USE [master]
GO
/****** Object:  Database [FullStackRibShack]    Script Date: 1/24/2021 9:11:10 PM ******/
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
/****** Object:  Table [dbo].[Schedule]    Script Date: 1/24/2021 9:11:11 PM ******/
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
SET IDENTITY_INSERT [dbo].[Schedule] ON 

INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (1, N'Riverfront Park', CAST(N'2021-03-03T00:00:00.000' AS DateTime), N'10:30am', N'3pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (2, N'7th and Union', CAST(N'2021-01-24T00:00:00.000' AS DateTime), N'11am', N'2pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (3, N'Nolensville Farmers Market', CAST(N'2021-03-20T00:00:00.000' AS DateTime), N'11am', N'4pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (4, N'Centennial Park', CAST(N'2021-01-09T00:00:00.000' AS DateTime), N'10:30am', N'2pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (5, N'Deadrick and 4th', CAST(N'2021-02-04T00:00:00.000' AS DateTime), N'11am', N'1:30pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (6, N'Deadrick and 4th', CAST(N'2021-02-11T00:00:00.000' AS DateTime), N'11am', N'1:30pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (7, N'Deadrick and 4th', CAST(N'2021-02-18T00:00:00.000' AS DateTime), N'11am', N'1:30pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (8, N'Ascend Amphitheater', CAST(N'2020-12-31T00:00:00.000' AS DateTime), N'11am', N'10:30pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (9, N'Shelby Bottoms Nature Center', CAST(N'2020-04-10T00:00:00.000' AS DateTime), N'10am', N'1pm', 0)
INSERT [dbo].[Schedule] ([Id], [Location], [Date], [TimeOpen], [TimeClosed], [EventCanceled]) VALUES (10, N'Leipers Fork', CAST(N'2020-04-15T00:00:00.000' AS DateTime), N'11am', N'3pm', 0)
SET IDENTITY_INSERT [dbo].[Schedule] OFF
USE [master]
GO
ALTER DATABASE [FullStackRibShack] SET  READ_WRITE 
GO
