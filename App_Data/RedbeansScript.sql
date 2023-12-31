USE [master]
GO
/****** Object:  Database [MDB]    Script Date: 1/22/2021 10:51:44 AM ******/
CREATE DATABASE [MDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1\MSSQL\DATA\MDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1\MSSQL\DATA\MDB_log.ldf' , SIZE = 4224KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MDB] SET  MULTI_USER 
GO
ALTER DATABASE [MDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MDB] SET QUERY_STORE = OFF
GO
USE [MDB]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 1/22/2021 10:51:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 1/22/2021 10:51:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[image] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[rate] [int] NULL,
	[Quantity] [int] NULL,
	[total] [decimal](18, 0) NULL,
	[IsPurchased] [bit] NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 1/22/2021 10:51:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[contact] [varchar](50) NULL,
	[age] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[address] [varchar](50) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 1/22/2021 10:51:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[comment] [varchar](500) NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[foods]    Script Date: 1/22/2021 10:51:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[foods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[type] [varchar](50) NULL,
	[rate] [varchar](50) NULL,
	[image] [varchar](500) NULL,
	[description] [varchar](500) NULL,
 CONSTRAINT [PK_foods] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales]    Script Date: 1/22/2021 10:51:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[rate] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[total] [varchar](50) NULL,
	[status] [nvarchar](50) NULL,
 CONSTRAINT [PK_sales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([id], [username], [password], [email], [contact]) VALUES (1, N'admin', N'admin', N'admin@xyz.com', N'1234567890')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[cart] ON 

INSERT [dbo].[cart] ([id], [username], [image], [name], [type], [rate], [Quantity], [total], [IsPurchased]) VALUES (2058, N'user', N'~/Sandys_Pics/gfcvegsteam.jpg', N'Veg MoMo', N'MoMo', 170, 5, CAST(850 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[cart] OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([id], [name], [username], [password], [email], [contact], [age], [gender], [address]) VALUES (1, N'user', N'user', N'user', N'user@xyz.com', N'9823456978', N'25', N'Male', N'userplace')
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
SET IDENTITY_INSERT [dbo].[feedback] ON 

INSERT [dbo].[feedback] ([id], [username], [comment]) VALUES (1, N'user', N'This is a test message')
SET IDENTITY_INSERT [dbo].[feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[foods] ON 

INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1005, N'Chicken Burger', N'Burgers', N'250', N'chickenburger.jpg', N'Juicy Chicken Burger')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1006, N'Black Burger with Bacon', N'Burgers', N'350', N'blackburgerbacon.jpg', N'Black Burger with Bacon')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1007, N'Ham Burger', N'Burgers', N'300', N'Kobe5cheese.jpg', N'Ham Burger with Cheese')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1008, N'Buff Burger', N'Burgers', N'300', N'buffburger.jpg', N'Buff Burger spicy')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1009, N'Veg Burger', N'Burgers', N'250', N'spicychickenburger.jpg', N'Veg potato and beans burger')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1010, N'Hawaiin Pizzza', N'Pizzas', N'250', N'Hawaian.jpg', N'Hawain Pizza')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1011, N'Mexican Spice', N'Pizzas', N'250', N'Mexicana.jpg', N'Mexican Pizza')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1012, N'Vegan Pizza', N'Pizzas', N'250', N'Vegeteriana.jpg', N'Vegetarian Pizza')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1013, N'Mushroom Pizza', N'Pizzas', N'250', N'shroom.jpg', N'Mushroom Pizza')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1014, N'Pepperoni Pizza', N'Pizzas', N'250', N'pepperoni.jpg', N'American Pepperoni Pizza')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1015, N'Buff MoMo', N'MoMo', N'200', N'Buff.jpg', N'Big balls of buff')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1017, N'Veg MoMo', N'MoMo', N'170', N'vegsteam.jpg', N'Big balls of veg momo')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1018, N'Chicken Momo', N'MoMo', N'250', N'Chicken.jpg', N'Chicken Momo')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1019, N'Carbonara', N'Pastas', N'250', N'carbonara.jpg', N'Creamy Carbonara')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1020, N'Fettucinin', N'Pastas', N'250', N'Fettucini Alfredo.jpg', N'Fettucini Alfredo')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1021, N'Lasagna', N'Pastas', N'250', N'Lasagna.jpg', N'Creamy Lasagna')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1022, N'Ravioli', N'Pastas', N'250', N'ravioli.jpg', N'Creamy ravioli')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1023, N'Coke', N'Drinks', N'250', N'2L Coke.jpg', N'Coke 2L')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1024, N'Pepsi', N'Drinks', N'250', N'2L Pepsi.jpg', N'Pepsi 2L')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1025, N'Dew', N'Drinks', N'250', N'2L Dew.jpeg', N'Dew 2L')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1026, N'Fanta', N'Take Away Drinks', N'250', N'2L Fanta.jpg', N'Fanta 2L')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1027, N'Buff Jhol', N'MoMo', N'250', N'jholbuff.jpg', N'Jhol Buff')
INSERT [dbo].[foods] ([id], [name], [type], [rate], [image], [description]) VALUES (1028, N'Chicken Jhol', N'MoMo', N'250', N'jhol-momo.jpg', N'Chicken Jhol')
SET IDENTITY_INSERT [dbo].[foods] OFF
GO
SET IDENTITY_INSERT [dbo].[sales] ON 

INSERT [dbo].[sales] ([id], [name], [username], [rate], [Quantity], [total], [status]) VALUES (1019, N'Veg MoMo', N'user', N'170', N'5', N'850', N'Delivery')
SET IDENTITY_INSERT [dbo].[sales] OFF
GO
USE [master]
GO
ALTER DATABASE [MDB] SET  READ_WRITE 
GO
