USE [master]
GO
/****** Object:  Database [DbProjeETicaret]    Script Date: 20.06.2022 01:06:45 ******/
CREATE DATABASE [DbProjeETicaret]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbEticaret', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbEticaret.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbEticaret_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbEticaret_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DbProjeETicaret] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbProjeETicaret].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbProjeETicaret] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DbProjeETicaret] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbProjeETicaret] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbProjeETicaret] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DbProjeETicaret] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbProjeETicaret] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DbProjeETicaret] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbProjeETicaret] SET  MULTI_USER 
GO
ALTER DATABASE [DbProjeETicaret] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbProjeETicaret] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbProjeETicaret] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbProjeETicaret] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbProjeETicaret] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbProjeETicaret] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DbProjeETicaret] SET QUERY_STORE = OFF
GO
USE [DbProjeETicaret]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20.06.2022 01:06:45 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[AddressDescription] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Baskets]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baskets](
	[BasketId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[BasketStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Baskets] PRIMARY KEY CLUSTERED 
(
	[BasketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[BrandName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[CategoryDescription] [nvarchar](max) NOT NULL,
	[CategoryStatus] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryOptions]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryOptions](
	[CategoryOptionId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[OptionId] [int] NOT NULL,
 CONSTRAINT [PK_CategoryOptions] PRIMARY KEY CLUSTERED 
(
	[CategoryOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[RegistrationDate] [datetime2](7) NOT NULL,
	[CustomerStatus] [bit] NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[FavoriteId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[FavoriteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ImagePath] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationClaims]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationClaims](
	[OperationClaimID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OperationClaims] PRIMARY KEY CLUSTERED 
(
	[OperationClaimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Options]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Options](
	[OptionId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Options] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OptionValues]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OptionValues](
	[OptionValueId] [int] IDENTITY(1,1) NOT NULL,
	[OptionId] [int] NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OptionValues] PRIMARY KEY CLUSTERED 
(
	[OptionValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[PaymentId] [int] NOT NULL,
	[OrderStatusId] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[ShipAddress] [nvarchar](max) NOT NULL,
	[InvoiceAddress] [nvarchar](max) NOT NULL,
	[PaymentStatus] [nvarchar](max) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatuses]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatuses](
	[OrderStatusId] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatusName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderStatuses] PRIMARY KEY CLUSTERED 
(
	[OrderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[PaymentType] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductOption]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOption](
	[ProductOptionId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[OptionId] [int] NOT NULL,
 CONSTRAINT [PK_ProductOption] PRIMARY KEY CLUSTERED 
(
	[ProductOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitsInStock] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[Discount] [float] NOT NULL,
	[ProductCreatedDate] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipments]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipments](
	[ShipmentId] [int] IDENTITY(1,1) NOT NULL,
	[ShipperId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ToAddress] [nvarchar](max) NOT NULL,
	[FromAddress] [nvarchar](max) NOT NULL,
	[SendDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Shipments] PRIMARY KEY CLUSTERED 
(
	[ShipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[ShipperId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[ShipperId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOperationClaims]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOperationClaims](
	[UserOperationClaimId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OperationClaimId] [int] NOT NULL,
 CONSTRAINT [PK_UserOperationClaims] PRIMARY KEY CLUSTERED 
(
	[UserOperationClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 20.06.2022 01:06:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220406131320_mig1', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220407113521_mig2', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220407113731_mig3', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220407114408_mig4', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220407114721_mig5', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220412184348_mig6', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220512103952_mig7', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220512105714_mig8', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220531223145_mig_9', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220531234045_mig_10', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220531235724_mig_11', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220601000701_mig_12', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220601001655_mig_13', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220601002603_mig_14', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220601201900_mig_15', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220601203642_mig_16', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220615141844_mig_17', N'6.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220615143118_mig_18', N'6.0.3')
GO
SET IDENTITY_INSERT [dbo].[Baskets] ON 

INSERT [dbo].[Baskets] ([BasketId], [CustomerId], [ProductId], [Quantity], [UnitPrice], [BasketStatus]) VALUES (39, 6, 22, 1, 5820.8, 0)
INSERT [dbo].[Baskets] ([BasketId], [CustomerId], [ProductId], [Quantity], [UnitPrice], [BasketStatus]) VALUES (40, 6, 83, 1, 7215.18, 0)
SET IDENTITY_INSERT [dbo].[Baskets] OFF
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (1, 7, N'Asus')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (2, 7, N'Gigabyte')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (3, 7, N'MSI')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (4, 8, N'ASUS')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (5, 8, N'Evga')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (6, 8, N'Gigabyte')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (7, 8, N'MSI')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (8, 8, N'Sapphire')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (9, 8, N'ZOTAC')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (10, 9, N'AMD')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (11, 9, N'Intel')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (12, 14, N'Corsair')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (13, 14, N'Crucial')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (14, 14, N'Kingston')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (15, 14, N'Seagate')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (16, 15, N'Lenovo')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (17, 15, N'Acer')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (18, 15, N'APPLE')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (19, 16, N'MSI')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (21, 11, N'Rampage')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (22, 11, N'A4TECH')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (23, 11, N'Inca')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (24, 11, N'Logitech')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (25, 11, N'Razer')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (26, 16, N'HP')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (27, 12, N'Corsair')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (28, 12, N'GSKILL')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (29, 12, N'Crucial')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (30, 12, N'Kingston')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (31, 21, N'Apple')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (32, 21, N'HUWAEI')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (33, 21, N'OPPO')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (34, 21, N'SAMSUNG')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (35, 23, N'Canon')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (36, 23, N'Nikon')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (37, 23, N'Sony')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (38, 22, N'Apple')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (39, 22, N'Belkin')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (40, 22, N'Hama')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (41, 22, N'Samsung')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (42, 24, N'GoPro')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (43, 22, N'Huawei')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (44, 24, N'Everest')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (45, 24, N'Sony')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (46, 10, N'Logitech')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (47, 10, N'Rampage')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (48, 10, N'Asus')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (49, 10, N'Everest')
INSERT [dbo].[Brands] ([BrandId], [CategoryId], [BrandName]) VALUES (50, 10, N'Razer')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (1, 0, N'Bilgisayar', N'Bilgisayar', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (3, 0, N'BİLGİSAYAR PARÇALARI', N'Pc parçaları', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (4, 0, N'Telefon', N'Akıllı Telefon', 0)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (6, 0, N'KAMERA', N'Kamera', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (7, 3, N'Anakart', N'Anakart', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (8, 3, N'Ekran Kartı', N'Ekran Kartı', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (9, 3, N'İşlemciler', N'İşlemci', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (10, 3, N'Klavye', N'Klavye', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (11, 3, N'Mouse', N'Mouse', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (12, 3, N'Ram', N'Bellek', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (14, 3, N'Depolama Birimi', N'Depolama birimi', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (15, 1, N'Dizüstü', N'Dizüstü', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (16, 1, N'Masaüstü', N'Masaüstü', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (21, 4, N'Cep Telefonları', N'Cep', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (22, 4, N'Telefon Kılıfları', N'Kılıf', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (23, 6, N'Dijital Kompakt Fotoğraf Makineleri', N'Kamera', 1)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [CategoryDescription], [CategoryStatus]) VALUES (24, 6, N'Aksiyon Kameraları', N'Kamera', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryOptions] ON 

INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (2, 7, 3)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (3, 7, 4)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (4, 7, 5)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (5, 8, 6)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (6, 8, 7)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (7, 8, 8)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (8, 9, 9)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (9, 9, 10)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (10, 12, 11)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (11, 12, 12)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (12, 12, 13)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (16, 12, 14)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (17, 10, 15)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (18, 11, 16)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (19, 11, 17)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (20, 14, 18)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (21, 14, 19)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (22, 14, 20)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (23, 21, 21)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (24, 21, 22)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (25, 21, 23)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (26, 21, 24)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (27, 22, 28)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (28, 24, 26)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (29, 23, 25)
INSERT [dbo].[CategoryOptions] ([CategoryOptionId], [CategoryId], [OptionId]) VALUES (30, 23, 26)
SET IDENTITY_INSERT [dbo].[CategoryOptions] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerId], [Name], [Surname], [Email], [RegistrationDate], [CustomerStatus], [Password]) VALUES (6, N'Mehmet', N'Karakaya', N'mehmet@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, N'123456')
INSERT [dbo].[Customers] ([CustomerId], [Name], [Surname], [Email], [RegistrationDate], [CustomerStatus], [Password]) VALUES (7, N'Mücahit', N'Efe', N'muco@gmail.com', CAST(N'2022-06-01T20:50:14.2440260' AS DateTime2), 0, N'1453')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (3, 19, N'/Images/cd1d6786-a87d-466f-b612-e89eaec2fcec.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (4, 20, N'/Images/52ef27f4-450a-4424-8544-08f4d0fcfc26.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (5, 22, N'/Images/9fcddb06-7cfd-45d9-ae79-f992287375d1.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (6, 23, N'/Images/7256bd6f-b7d1-43e1-9949-a9d5528b483f.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (7, 24, N'/Images/0724cea3-637b-45de-9ebf-b69e4f57f720.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (8, 35, N'/Images/0a820db7-dd2c-4a46-b287-2b6cc4c4da7c.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (9, 36, N'/Images/d470067e-7d12-457b-82bb-56f09d24fd7f.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (10, 25, N'/Images/9f2128e4-0f14-4095-b78f-232e0c1239ad.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (11, 26, N'/Images/d621c257-de54-422d-bbee-f8486fe48b3b.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (12, 27, N'/Images/77243772-bbbd-4998-9dbc-cd93d0979212.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (13, 28, N'/Images/4e57ca8c-5881-4e06-915f-d052860dd167.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (14, 34, N'/Images/430a8501-90e8-4264-8272-5b606b500364.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (15, 29, N'/Images/62aa9dc8-927e-41a0-93e5-7f8f11bea20e.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (16, 30, N'/Images/799d2e00-b65a-48f6-8f27-7963ff8742fa.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (17, 31, N'/Images/069a8531-1a42-4748-946a-f46e9768be33.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (18, 32, N'/Images/bab1fe1f-d01b-4655-9f4f-15adce3b6ac5.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (19, 33, N'/Images/a9186731-f453-4584-98ea-953dcc06b810.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (20, 37, N'/Images/442d596d-73ba-46c2-a728-896ac65d4b05.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (21, 38, N'/Images/94da3086-b528-4408-b556-8abb1c09adeb.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (22, 39, N'/Images/fa906dad-b369-431b-8315-e4d68c152f12.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (23, 40, N'/Images/02f99788-868e-4655-81b3-743d4683bf92.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (24, 41, N'/Images/47389fc4-0638-4e1b-877f-0d29108ad784.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (25, 42, N'/Images/9555e856-743e-43a6-badd-6046fe2b3128.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (26, 43, N'/Images/447dbcda-d82e-4290-81d5-eda9e2ce13aa.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (28, 45, N'/Images/7f09de3a-3727-4e91-8f81-018e98c4e592.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (29, 46, N'/Images/e4d5c848-2d28-4d46-85b5-d92f8d32cc71.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (30, 47, N'/Images/7b61736e-726c-491f-a29d-1755f610e50b.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (31, 48, N'/Images/f127b7f3-84e7-41a1-9621-6a21821b0e0a.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (32, 49, N'/Images/a24e66af-20ad-4ab3-bbed-53b332c071dd.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (33, 50, N'/Images/ea7d80c8-3789-46bc-b41e-96d97ed15a7b.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (34, 51, N'/Images/9d635de6-507d-40e3-a1d7-dfef7d6c45ac.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (35, 52, N'/Images/23a2b8e7-1a73-43bc-adb5-1a2943b87447.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (36, 53, N'/Images/354ca01e-f83d-4694-b454-3501a5596856.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (37, 54, N'/Images/3b581cf9-0a59-43b5-93f0-6b5fd3ac2b3c.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (38, 55, N'/Images/19420379-2785-497b-8014-90a9b7d9c697.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (39, 56, N'/Images/8cd47dc0-bfb6-431f-81f4-257db62a718d.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (40, 57, N'/Images/40cc4d37-00e1-4977-b7f7-f7f2903c2caf.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (41, 58, N'/Images/b3624b66-99a5-4a04-9efe-0a50c924ef24.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (42, 59, N'/Images/1619e2d8-d949-4fa9-84bf-13f6461fb17a.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (43, 60, N'/Images/f76a5730-838b-4441-be86-f62d64fe30b8.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (44, 61, N'/Images/8b6f8afd-21b3-4739-a16b-762b5ddd3cea.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (45, 62, N'/Images/b9967060-d7e5-4a15-85a6-0c508b3f7907.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (46, 63, N'/Images/74b1ddb1-5f2a-47ce-94f1-615e12fcf683.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (47, 71, N'/Images/294b1216-056b-45bb-93ea-5407dfcb46e1.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (48, 72, N'/Images/81efebb9-00e8-44e5-b769-7ca85eff5d96.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (49, 73, N'/Images/086e065e-ec31-481b-9559-5247bb64f9ae.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (50, 74, N'/Images/580a54b3-d0b2-43e0-84f0-c0299caece5a.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (51, 75, N'/Images/15b0cfec-5c2d-4175-8b12-fb306b7e4ef1.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (52, 76, N'/Images/34807bc0-cd83-4f10-a48f-f897ffd8ff5e.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (53, 77, N'/Images/7cf04594-2365-4d10-8833-8b3095d501c6.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (54, 78, N'/Images/40aebba1-e64c-4ec2-94ab-1bdcb21890d7.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (55, 80, N'/Images/7b8ea2c1-4043-4214-8a89-fda5db2644db.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (56, 64, N'/Images/3cb4fb8b-673a-41e2-928e-6500aa15ccfc.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (57, 65, N'/Images/7e03387b-3cbb-4c7d-816d-331aca56889b.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (58, 66, N'/Images/450a666a-dcfb-48b3-81e2-6d1874817789.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (59, 67, N'/Images/412ecc4c-c3a6-410a-a502-f4dd575917d3.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (60, 68, N'/Images/84e93021-7244-4561-b1bc-140924816fcb.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (61, 69, N'/Images/ec2ed047-adef-4417-86b8-b1c8244dfd28.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (62, 70, N'/Images/9ea0f703-59df-459f-ac25-43301fbdf747.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (63, 81, N'/Images/901926cd-63c1-4fe6-a29b-8736117d6a39.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (64, 82, N'/Images/3820e2e5-6d84-435f-a71d-666e328dab3b.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (65, 83, N'/Images/281ab19b-af52-4e85-bdca-f8fe04c1db01.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (66, 84, N'/Images/8541b393-1a73-48b0-a765-a20b812375e0.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (67, 85, N'/Images/a9aa63f9-047b-4657-809c-45866f9aeddb.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (68, 86, N'/Images/ac100100-2f47-42f0-949e-94e5117b2875.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (69, 87, N'/Images/06761b21-cc31-4dcd-a6e0-f5c341f1b601.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (70, 88, N'/Images/c5be6a58-6d9a-498e-a363-bc58ba61bcad.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (71, 89, N'/Images/ddca0b87-bef1-4f24-8267-9201f32cd907.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (72, 90, N'/Images/40bb459f-0db3-4cde-b350-fe7f7d3f1635.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (73, 91, N'/Images/90dad8f6-950b-4529-be47-03b4b21b21ac.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (74, 92, N'/Images/73dfc8d2-8afb-4546-81e4-58d6ee7baa96.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (75, 94, N'/Images/e0c969cd-99e9-401f-b33c-05ea270ef38e.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (76, 95, N'/Images/0da0a933-bc8e-4214-9ae3-5f22befcd553.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (77, 96, N'/Images/54d00bbd-cc18-44c6-a7f2-1d477e7410aa.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (78, 97, N'/Images/11049cfd-1d60-4b77-acd1-39452b7bf9c9.png')
INSERT [dbo].[Images] ([ImageId], [ProductId], [ImagePath]) VALUES (79, 114, N'/Images/5a25a4bc-da9e-44ec-86a9-7cdcb7e3f6e8.png')
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Options] ON 

INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (3, N'Anakart Yapısı')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (4, N'Ram Tipi')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (5, N'Anakart Chipset')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (6, N'Bellek Kapasitesi')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (7, N'Bellek Tipi')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (8, N'Grafik İşlemci')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (9, N'İşlemci Özellikleri')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (10, N'İşlemciler')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (11, N'Hafıza Bus Hızı')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (12, N'Ram Kapasitesi')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (13, N'Gecikme Süresi')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (14, N'Ram Tipi')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (15, N'Klavye Bağlantısı')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (16, N'Mouse Tipi')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (17, N'Bağlantı Özellikleri')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (18, N'Disk Kapasitesi')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (19, N'Disk Tipi')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (20, N'HDD Dönüş Hızı')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (21, N'Batarya Gücü')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (22, N'Hafıza')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (23, N'Renk Grubu')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (24, N'Ekran Özellikleri')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (25, N'Fotoğraf Hassasiyeti')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (26, N'Ekran Boyutu')
INSERT [dbo].[Options] ([OptionId], [Name]) VALUES (28, N'Aksesuar Tipi')
SET IDENTITY_INSERT [dbo].[Options] OFF
GO
SET IDENTITY_INSERT [dbo].[OptionValues] ON 

INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (1, 3, N'ATX')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (2, 3, N'MicroAT')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (4, 3, N'Mini ITX')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (5, 4, N'DDR4')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (6, 4, N'DDR5')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (7, 5, N'Intel® Z690')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (8, 5, N'Intel® B560')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (9, 6, N'4GB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (10, 6, N'8GB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (11, 6, N'12GB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (12, 6, N'16GB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (13, 6, N'24GB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (14, 7, N'GDDR3')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (15, 7, N'GDDR4')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (16, 7, N'GDDR5')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (17, 7, N'GDDR6')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (18, 8, N'GEFORCE RTX 3070')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (19, 8, N'RADEON RX 6900 XT')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (21, 8, N'RADEON RX 6800 XT')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (23, 8, N'GEFORCE RTX 3090')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (24, 8, N'GEFORCE RTX 3090 Ti')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (25, 8, N'GEFORCE RTX 3060 Ti')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (26, 8, N'RADEON RX 6500 XT')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (27, 9, N'Core İ3')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (28, 9, N'Core İ5')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (29, 9, N'Core İ7')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (30, 9, N'Ryzen™ 5')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (31, 9, N'Ryzen™ 7')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (32, 9, N'Ryzen™ 9')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (34, 10, N'2066 Soket')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (35, 10, N'AM4 Soket')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (36, 10, N'Soket 1200')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (37, 10, N'Soket 1700')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (38, 11, N'3000Mhz')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (39, 11, N'3200Mhz')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (40, 11, N'3600Mhz')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (41, 11, N'4000Mhz')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (42, 12, N'4GB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (43, 12, N'8GB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (44, 12, N'16GB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (45, 12, N'32GB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (46, 13, N'CL14')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (47, 13, N'CL15')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (49, 13, N'CL16')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (50, 14, N'DDR4')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (51, 14, N'DDR5')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (52, 15, N'Kablolu')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (53, 15, N'Kablosuz')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (54, 16, N'Kablolu')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (55, 16, N'Kablosuz')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (56, 16, N'Optik')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (57, 17, N'Bluetooth')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (58, 17, N'Lighting')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (59, 17, N'USB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (61, 18, N'1TB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (62, 18, N'2TB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (63, 18, N'4TB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (64, 20, N'5400 RPM')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (65, 20, N'7200 RPM')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (66, 19, N'NVMe M.2')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (67, 19, N'SATA M.2')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (68, 19, N'Harici SSD')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (69, 13, N'CL18')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (70, 21, N'3000Mah')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (71, 21, N'4000Mah')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (72, 21, N'5000Mah')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (73, 22, N'64GB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (74, 22, N'128GB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (75, 22, N'256GB')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (76, 23, N'Beyaz')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (77, 23, N'Mavi')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (78, 23, N'Siyah')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (79, 24, N'Oled')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (80, 24, N'IPS')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (81, 24, N'HD')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (82, 24, N'Dokunmatik')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (83, 24, N'Parmak İzi Okuyucu')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (84, 25, N'24MP')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (85, 25, N'24.1MP')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (86, 25, N'20.1MP')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (87, 25, N'20.9MP')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (88, 25, N'32.5MP')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (90, 26, N'3inch')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (91, 26, N'2.7inch')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (92, 26, N'3.1inch')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (93, 26, N'2inch')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (95, 28, N'Şeffaf')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (96, 28, N'Silikon Kılıf')
INSERT [dbo].[OptionValues] ([OptionValueId], [OptionId], [Value]) VALUES (97, 28, N'Telefon Kılıfı')
SET IDENTITY_INSERT [dbo].[OptionValues] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (1, 20, 22, 1, 5820.8)
INSERT [dbo].[OrderDetails] ([OrderDetailId], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (2, 20, 83, 1, 7215.18)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [CustomerId], [PaymentId], [OrderStatusId], [Amount], [ShipAddress], [InvoiceAddress], [PaymentStatus], [OrderDate]) VALUES (20, 6, 1, 2, 4, N'deneme', N'deneme', N'Ödendi', CAST(N'2022-06-15T18:29:53.1316551' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatuses] ON 

INSERT [dbo].[OrderStatuses] ([OrderStatusId], [OrderStatusName]) VALUES (1, N'Beklemede.')
INSERT [dbo].[OrderStatuses] ([OrderStatusId], [OrderStatusName]) VALUES (2, N'Kargoya verildi.')
INSERT [dbo].[OrderStatuses] ([OrderStatusId], [OrderStatusName]) VALUES (3, N'Teslim Edildi.')
SET IDENTITY_INSERT [dbo].[OrderStatuses] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([PaymentId], [PaymentType]) VALUES (1, N'Kredi Kartı')
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (19, 7, 1, N'ASUS TUF GAMING B660M-PLUS D4 Intel B660 Soket DDR4 5333MHz (OC) M.2 ATX Anakart', N'ASUS TUF GAMING B660M-PLUS D4 Intel B660 Soket DDR4 5333MHz (OC) M.2 ATX Anakart', 10, 150, 1500, 0, CAST(N'2022-04-13T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (20, 7, 1, N'GIGABYTE Z690 ULTRA DURABLE Intel Soket 1700 DDR5 6000MHz (O.C) M.2  MicroAT Anakart', N'GIGABYTE Z690 ULTRA DURABLE Intel Soket 1700 DDR5 6000MHz (O.C) M.2 Mini ATX Anakart', 15, 15, 4500, 0, CAST(N'2022-04-13T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (22, 8, 5, N'EVGA GeForce GTX 1660 SC ULTRA GAMING 6GB GDDR5 192Bit Nvidia DX12 Ekran Kartı', N'EVGA GeForce GTX 1660 SC ULTRA GAMING 6GB GDDR5 192Bit Nvidia DX12 Ekran Kartı', 150, 150, 6848, 15, CAST(N'2022-04-14T23:38:59.9479664' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (23, 8, 9, N'ZOTAC GeForce RTX 3080 Ti GAMING AMP HOLO 12GB GDDR6X 384Bit Nvidia Ekran Kartı', N'ZOTAC GeForce RTX 3080 Ti GAMING AMP HOLO 12GB GDDR6X 384Bit Nvidia Ekran Kartı', 100, 100, 32844, 50, CAST(N'2022-04-14T23:40:26.9073081' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (24, 8, 4, N'ASUS RADEON RX 550 4G EVO Phoenix 4G GDD5 128bit DX12 AMD Ekran Kartı', N'ASUS RADEON RX 550 4G EVO Phoenix 4G GDD5 128bit DX12 AMD Ekran Kartı', 50, 50, 2771, 0, CAST(N'2022-04-14T23:41:03.9327753' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (25, 15, 16, N'LENOVO AIO 3 INTEL CORE İ3 1115G4 3 GHZ 4 GB 256 GB SSD INTEL UHD WIN11 23.8''''', N'LENOVO AIO 3 INTEL CORE İ3 1115G4 3 GHZ 4 GB 256 GB SSD INTEL UHD WIN11 23.8''''', 500, 500, 10999, 10, CAST(N'2022-04-14T23:43:58.5426102' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (26, 15, 18, N'APPLE MGPH3TU/A iMac M1 8C CPU 8C GPU 8 GB 256 GB SSD 24" - YEŞİL', N'APPLE MGPH3TU/A iMac M1 8C CPU 8C GPU 8 GB 256 GB SSD 24" - YEŞİL', 10, 10, 21999, 85, CAST(N'2022-04-14T23:44:52.4625410' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (27, 15, 17, N'ACER C24-1650 INTEL CORE İ3 1115G4 3 GHZ 8 GB 256GB SSD INTEL UHD WIN10 23.8''''', N'ACER C24-1650 INTEL CORE İ3 1115G4 3 GHZ 8 GB 256GB SSD INTEL UHD WIN10 23.8''''', 80, 80, 10499, 0, CAST(N'2022-04-14T23:45:24.6206385' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (28, 16, 19, N'MSI MAG INFINITE S3 INTEL İ5 11400F 2.6GHZ 16GB 1TB SSD 4GB NVIDIA GTX1650 WIN10', N'MSI MAG INFINITE S3 INTEL İ5 11400F 2.6GHZ 16GB 1TB SSD 4GB NVIDIA GTX1650 WIN10', 222, 222, 17599, 23, CAST(N'2022-04-14T23:47:14.0000000' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (29, 11, 21, N'Rampage SMX-R125 CINDER Usb Siyah RGB Işıklı 24000 dpi Gaming Oyuncu Mouse', N'Rampage SMX-R125 CINDER Usb Siyah RGB Işıklı 24000 dpi Gaming Oyuncu Mouse', 2346, 2346, 694, 8, CAST(N'2022-04-14T23:49:12.6967040' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (30, 11, 22, N'A4TECH BLOODY W60 MAX 10K CPI RGB GAMING MOUSE RED', N'A4TECH BLOODY W60 MAX 10K CPI RGB GAMING MOUSE RED', 90, 90, 671, 12, CAST(N'2022-04-14T23:49:47.5748664' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (31, 11, 23, N'INCA IMG-355GX EMPOUSA 3D RGB Led 7200 Dpi Macro Keys Private Gaming Mouse', N'INCA IMG-355GX EMPOUSA 3D RGB Led 7200 Dpi Macro Keys Private Gaming Mouse', 1500, 1500, 349, 31, CAST(N'2022-04-14T23:50:23.2710192' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (32, 11, 24, N'LOGITECH G G203 Lightsync Oyuncu Mouse Mavi', N'LOGITECH G G203 Lightsync Oyuncu Mouse Mavi', 450, 450, 329, 0, CAST(N'2022-04-14T23:51:11.9022904' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (33, 11, 25, N'RAZER DEATHADDER V2 MINI + MOUSE GRIP TAPES', N'RAZER DEATHADDER V2 MINI + MOUSE GRIP TAPES', 1, 1, 565, 9, CAST(N'2022-04-14T23:51:51.1471409' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (34, 16, 26, N'HP 434T7EA INTEL CORE İ5 11400 2.6GHZ 16GB 512GB SSD 6GB GTX1660 SUPER WIN10', N'HP Pavilion Gaming Desktop TG01-2047nt Bundle PC (434T7EA) Kazandıran güç Dilediğin gibi oynamaya hazır ol. Bu güçlü bilgisayar, günümüzde ve gelecekte oyunlara uyum sağlayacak şekilde geliştirildi. Kompakt ve şık dış tasarımının altında, güvenle oyun oynamak için ihtiyacın olan performansı ve genişletme ve yükseltme alanını elde edersin.', 10, 10, 18935, 15, CAST(N'2022-04-14T23:53:28.4833037' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (35, 8, 7, N'MSI GEFORCE RTX 3060 Ti GAMING Z TRIO 8GB LHR GDDR6 256bit NVIDIA Ekran Kartı', N'MSI GEFORCE RTX 3060 TI GAMING Z TRIO 8GB LHR GDDR6 256bit NVIDIA Ekran Kartı', 15, 15, 13799, 1, CAST(N'2022-04-15T00:00:16.9371378' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (36, 8, 6, N'GIGABYTE GeForce GTX 1660 Ti OC 6GB GDDR6 192Bit DX12 Nvidia Ekran Kartı', N'GIGABYTE GeForce GTX 1660 TI OC 6GB GDDR6 192Bit DX12 Nvidia Ekran Kartı', 1500, 1500, 7129, 0, CAST(N'2022-04-15T00:00:52.3565613' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (37, 14, 12, N'Corsair 2TB MP400 NVMe Okuma 3480MB-Yazma 3000MB M.2 SSD (CSSD-F2000GBMP400R2)', N'Corsair 2TB MP400 NVMe Okuma 3480MB-Yazma 3000MB M.2 SSD (CSSD-F2000GBMP400R2)', 200, 200, 4500, 1, CAST(N'2022-04-15T00:18:18.8673018' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (38, 14, 12, N'Corsair MP400 GBMP400R2 3480 3000 2tb M.2 Pcıe (Nvme) SSD', N'Corsair MP400 GBMP400R2 3480 3000 2tb M.2 Pcıe (Nvme) SSD', 231, 231, 3700, 5, CAST(N'2022-04-15T00:19:07.9676163' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (39, 14, 13, N'Crucial 1TB MX500 Serisi 3D NAND Sata 3.0 SSD (Okuma 560MB / Yazma 510MB)', N'Crucial 1TB MX500 Serisi 3D NAND Sata 3.0 SSD (Okuma 560MB / Yazma 510MB)', 15, 15, 2700, 6, CAST(N'2022-04-15T00:20:11.9273223' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (40, 14, 13, N'Crucial 2TB P5 Serisi NVMe M.2 SSD (Okuma 3400MB / Yazma 3000MB)', N'Crucial 2TB P5 Serisi NVMe M.2 SSD (Okuma 3400MB / Yazma 3000MB)', 95, 95, 3000, 6, CAST(N'2022-04-15T00:20:47.3477659' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (41, 14, 14, N'Kingston 240GB A400 Serisi Sata 3.0 Cache SSD (Okuma 500MB / Yazma 350MB)', N'Kingston 240GB A400 Serisi Sata 3.0 Cache SSD (Okuma 500MB / Yazma 350MB)', 1, 1, 500, 4, CAST(N'2022-04-15T00:21:24.0930287' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (42, 14, 14, N'Kingston 240GB A400 Serisi Sata 3.0 Cache M.2 SSD (Okuma 500MB / Yazma 350MB)', N'Kingston 240GB A400 Serisi Sata 3.0 Cache M.2 SSD (Okuma 500MB / Yazma 350MB)', 60, 60, 450, 0, CAST(N'2022-04-15T00:22:21.3008784' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (43, 14, 15, N'Seagate FireCuda 510, 1 TB, Dahili SSD, M.2 PCIe Gen3 x4 NVMe 1.3, Oyun bilgisayarları, 3 yıl Rescue Services (ZP1000GM30011)', N'Seagate FireCuda 510, 1 TB, Dahili SSD, M.2 PCIe Gen3 x4 NVMe 1.3, Oyun bilgisayarları, 3 yıl Rescue Services (ZP1000GM30011)', 5, 5, 5250, 45, CAST(N'2022-04-15T00:23:47.4514982' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (45, 8, 7, N'MSI GEFORCE RTX 3070 GAMING Z TRIO 8G LHR 8GB GDDR6 256bit NVIDIA Ekran Kartı', N'MSI GEFORCE RTX 3070 GAMING Z TRIO 8G LHR 8GB GDDR6 256bit NVIDIA Ekran Kartı', 60, 90, 15599, 6, CAST(N'2022-05-12T21:26:09.3634843' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (46, 8, 8, N'SAPPHIRE RADEON RX 6900 XT NITRO+ SE OC 16GB GDDR6 256Bit DX12 AMD Ekran Kartı', N'SAPPHIRE RADEON RX 6900 XT NITRO+ SE OC 16GB GDDR6 256Bit DX12 AMD Ekran Kartı', 85, 85, 26045, 40, CAST(N'2022-05-12T21:28:14.9916356' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (47, 8, 7, N'MSI RADEON RX 6800 XT GAMING Z TRIO 16GB GDDR6 256bit AMD Ekran Kartı', N'MSI RADEON RX 6800 XT GAMING Z TRIO 16GB GDDR6 256bit AMD Ekran Kartı', 500, 500, 22242, 0, CAST(N'2022-05-12T21:30:23.1555584' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (48, 8, 7, N'MSI GEFORCE RTX 3090 VENTUS 3X 24G OC 24GB GDDR6X 384Bit NVIDIA Ekran Kartı', N'MSI GEFORCE RTX 3090 VENTUS 3X 24G OC 24GB GDDR6X 384Bit NVIDIA Ekran Kartı', 50, 90, 42049, 80, CAST(N'2022-05-12T21:31:01.1778600' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (49, 8, 5, N'EVGA GeForce RTX 3090 Ti FTW3 ULTRA GAMING 24GB GDDR6X 384Bit Nvidia Ekran Kartı', N'EVGA GeForce RTX 3090 Ti FTW3 ULTRA GAMING 24GB GDDR6X 384Bit Nvidia Ekran Kartı', 80, 80, 58098, 5, CAST(N'2022-05-12T21:31:35.9160794' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (50, 8, 4, N'ASUS RADEON TUF RX 6800 XT OC 16GB GAMING GDDR6 256Bit DX12 AMD Ekran Kartı', N'ASUS RADEON TUF RX 6800 XT OC 16GB GAMING GDDR6 256Bit DX12 AMD Ekran Kartı', 40, 40, 22206, 35, CAST(N'2022-05-12T21:32:07.0784787' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (51, 8, 4, N'ASUS GeForce DUAL RTX 3060 Ti MIN OC 8GB GDDR6 256Bit DX12 Nvidia Ekran Kartı', N'ASUS GeForce DUAL RTX 3060 Ti MIN OC 8GB GDDR6 256Bit DX12 Nvidia Ekran Kartı', 60, 45, 11894, 28, CAST(N'2022-05-12T21:32:52.4604209' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (52, 8, 7, N'MSI RADEON RX 6500 XT MECH 2X 4GB OC GDDR6 64bit DX12 AMD Ekran Kartı', N'MSI RADEON RX 6500 XT MECH 2X 4GB OC GDDR6 64bit DX12 AMD Ekran Kartı', 60, 60, 4389, 1, CAST(N'2022-05-12T21:33:40.0537279' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (53, 8, 4, N'ASUS GeForce TUF GTX 1650 4GD6 GAMING 4GB GDDR6 128Bit Nvidia DX12 Ekran Kartı', N'ASUS GeForce TUF GTX 1650 4GD6 GAMING 4GB GDDR6 128Bit Nvidia DX12 Ekran Kartı', 40, 40, 5061, 6, CAST(N'2022-05-12T21:34:17.5437633' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (54, 8, 5, N'EVGA Geforce RTX 3070 Ti FTW3 ULTRA GAMING 8GB GDDR6X 256Bit Nvidia Ekran Kartı', N'EVGA Geforce RTX 3070 Ti FTW3 ULTRA GAMING 8GB GDDR6X 256Bit Nvidia Ekran Kartı', 1, 1, 19851, 1, CAST(N'2022-05-12T21:34:56.2499970' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (55, 8, 6, N'GIGABYTE GeForce RTX 3070 Ti MASTER 8GB GDDR6X 256Bit Nvidia RGB Ekran Kartı', N'GIGABYTE GeForce RTX 3070 Ti MASTER 8GB GDDR6X 256Bit Nvidia RGB Ekran Kartı', 62, 52, 20155, 3, CAST(N'2022-05-12T21:35:31.0574194' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (56, 8, 6, N'GIGABYTE GeForce RTX 3080 Ti GAMING OC 12GB GDDR6X 384Bit Nvidia Ekran Kartı', N'GIGABYTE GeForce RTX 3080 Ti GAMING OC 12GB GDDR6X 384Bit Nvidia Ekran Kartı', 23, 23, 28499, 0, CAST(N'2022-05-12T21:36:00.4649715' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (57, 7, 3, N'MSI B550-A PRO Amd B550 Soket AM4 DDR4 4400MHz M.2 ATX Anakart', N'MSI B550-A PRO Amd B550 Soket AM4 DDR4 4400MHz M.2 ATX Anakart', 90, 90, 2808, 6, CAST(N'2022-05-12T21:38:02.3159935' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (58, 7, 3, N'MSI MPG X570S EDGE MAX WIFI Amd X570 Soket AM4 DDR4 5300MHz (OC) M.2 ATX Anakart', N'MSI MPG X570S EDGE MAX WIFI Amd X570 Soket AM4 DDR4 5300MHz (OC) M.2 ATX Anakart', 82, 82, 4309, 2, CAST(N'2022-05-12T21:38:31.9421071' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (59, 7, 1, N'ASUS PRIME Z690-P WIFI D4 Intel PRIME Z690-P Soket 1700 DDR4 5333MHz(OC) ATX Anakart', N'ASUS PRIME Z690-P WIFI D4 Intel PRIME Z690-P Soket 1700 DDR4 5333MHz(OC) ATX Anakart', 31, 31, 4602, 0, CAST(N'2022-05-12T21:38:58.8838578' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (60, 7, 2, N'GIGABYTE B550M S2H AMD B550 Soket AM4 DDR4 5100MHz (O.C.) M.2 MicroAT Anakart', N'GIGABYTE B550M S2H AMD B550 Soket AM4 DDR4 5100MHz (O.C.) M.2 MicroAT Anakart', 60, 60, 1792, 6, CAST(N'2022-05-12T21:40:11.8409513' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (61, 7, 2, N'GIGABYTE B450M H UD AMD B450 Soket AM4 DDR4 3600MHZ (O.C) M.2 MicroAT Anakart', N'GIGABYTE B450M H UD AMD B450 Soket AM4 DDR4 3600MHZ (O.C) M.2 MicroAT Anakart', 95, 95, 1271, 5, CAST(N'2022-05-12T21:41:02.2991629' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (62, 7, 1, N'ASUS ROG STRIX Z690-I GAMING WIFI Intel Z690 Soket 1700 DDR5 6400MHz(OC) Mini ITX Anakart', N'ASUS ROG STRIX Z690-I GAMING WIFI Intel Z690 Soket 1700 DDR5 6400MHz(OC) Mini ITX Anakart', 150, 150, 8237, 2, CAST(N'2022-05-12T21:41:27.8784522' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (63, 7, 1, N'ASUS ROG STRIX B550-I GAMING AMD B550 Soket AM4 Ryzen DDR4 4600MHz(O.C)  Mini ITX Anakart', N'ASUS ROG STRIX B550-I GAMING AMD B550 Soket AM4 Ryzen DDR4 4600MHz(O.C)  Mini ITX Anakart', 95, 95, 4444, 98, CAST(N'2022-05-12T21:42:11.0309884' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (64, 9, 11, N'Intel Core i3 10105 Soket 1200 10. Nesil 3.70GHz 6MB Önbellek 14nm İşlemci', N'Intel Core i3 10105 Soket 1200 10. Nesil 3.70GHz 6MB Önbellek 14nm İşlemci', 10, 10, 2174, 45, CAST(N'2022-05-12T21:43:54.9097207' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (65, 9, 11, N'Intel Core i5 12400F Soket 1700 12. Nesil 2.50GHz 18MB Önbellek 10nm İşlemci', N'Intel Core i5 12400F Soket 1700 12. Nesil 2.50GHz 18MB Önbellek 10nm İşlemci', 100, 100, 3413, 1, CAST(N'2022-05-12T21:44:20.3156484' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (66, 9, 10, N'AMD Ryzen 5 5500 Soket AM4 4.2 GHz 19MB 65W 7nm İşlemci', N'AMD Ryzen 5 5500 Soket AM4 4.2 GHz 19MB 65W 7nm İşlemci', 650, 650, 3294, 19, CAST(N'2022-05-12T21:46:34.6498778' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (67, 9, 11, N'Intel Core i7 12700K Soket 1700 12. Nesil 2.70GHz 25MB Önbellek 10nm İşlemci', N'Intel Core i7 12700K Soket 1700 12. Nesil 2.70GHz 25MB Önbellek 10nm İşlemci', 12, 12, 8288, 0, CAST(N'2022-05-12T21:46:54.5191509' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (68, 9, 10, N'AMD Ryzen 7 5700X Soket AM4 4.6GHz 36MB 65W 7nm İşlemci', N'AMD Ryzen 7 5700X Soket AM4 4.6GHz 36MB 65W 7nm İşlemci', 85, 85, 6327, 47, CAST(N'2022-05-12T21:47:17.2291378' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (69, 9, 11, N'Intel Core i9 11900K Soket 1200 11. Nesil 3.50GHz 16MB Önbellek 14nm İşlemci', N'Intel Core i9 11900K Soket 1200 11. Nesil 3.50GHz 16MB Önbellek 14nm İşlemci', 96, 96, 10745, 85, CAST(N'2022-05-12T21:48:04.1223183' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (70, 9, 11, N'Intel Core i7 11700 Soket 1200 11. Nesil 2.50GHz 16MB Önbellek 14nm İşlemci', N'Intel Core i7 11700 Soket 1200 11. Nesil 2.50GHz 16MB Önbellek 14nm İşlemci', 150, 150, 7104, 65, CAST(N'2022-05-12T21:48:32.3616127' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (71, 12, 27, N'CORSAIR 8GB (1x8GB) Vengeance Siyah DDR4 3000MHz CL16 Single Ram', N'CORSAIR 8GB (1x8GB) Vengeance Siyah DDR4 3000MHz CL16 Single Ram', 85, 85, 803, 0, CAST(N'2022-05-12T21:50:43.9954385' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (72, 12, 27, N'CORSAIR 8GB (1x8GB) Vengeance RGB PRO Siyah DDR4 3200MHz CL16 Single Ram ', N'CORSAIR 8GB (1x8GB) Vengeance RGB PRO Siyah DDR4 3200MHz CL16 Single Ram ', 90, 90, 1004, 8, CAST(N'2022-05-12T21:51:25.7286308' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (73, 12, 27, N'CORSAIR 8GB (1x8GB) Vengeance LPX Siyah DDR4 3600MHz CL18 Single Ram', N'CORSAIR 8GB (1x8GB) Vengeance LPX Siyah DDR4 3600MHz CL18 Single Ram', 150, 150, 761, 9, CAST(N'2022-05-12T21:52:05.3560529' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (74, 12, 28, N'GSKILL 16GB (2x8GB) Ripjaws V DDR4 3600MHz CL18 1.35V Dual Kit Ram', N'GSKILL 16GB (2x8GB) Ripjaws V DDR4 3600MHz CL18 1.35V Dual Kit Ram', 90, 90, 1317, 85, CAST(N'2022-05-12T21:52:57.3141071' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (75, 12, 28, N'GSKILL 32GB (2x16GB) TRIDENT Z5 SILVER DDR5 6400MHz CL32 1.4V RGB Dual Kit Ram', N'GSKILL 32GB (2x16GB) TRIDENT Z5 SILVER DDR5 6400MHz CL32 1.4V RGB Dual Kit Ram', 95, 95, 11911, 5, CAST(N'2022-05-12T21:53:41.3159809' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (76, 12, 29, N'Crucial 8GB (1x8GB) Ballistix Siyah DDR4 3200MHz CL16 PC Ram', N'Crucial 8GB (1x8GB) Ballistix Siyah DDR4 3200MHz CL16 PC Ram', 10, 15, 1088, 4, CAST(N'2022-05-12T21:54:19.8314313' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (77, 12, 29, N'Crucial 64GB (2x32GB) Ballistix Siyah DDR4 3200MHz CL16 1.35V PC Ram', N'Crucial 64GB (2x32GB) Ballistix Siyah DDR4 3200MHz CL16 1.35V PC Ram', 85, 95, 5716, 8, CAST(N'2022-05-12T21:54:45.4916433' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (78, 12, 30, N'Kingston 32GB (1x32GB) Fury Beast DDR4 3600MHz CL17 PC Ram', N'Kingston 32GB (1x32GB) Fury Beast DDR4 3600MHz CL17 PC Ram', 65, 65, 3475, 9, CAST(N'2022-05-12T21:55:16.3209988' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (80, 12, 28, N'GSKILL 32GB (2x16GB) TRIDENT Z DDR4 4000MHz CL18 1.40V Dual Kit RGB LED Ram', N'GSKILL 32GB (2x16GB) TRIDENT Z DDR4 4000MHz CL18 1.40V Dual Kit RGB LED Ram', 40, 40, 4014, 75, CAST(N'2022-05-12T21:56:03.4415187' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (81, 21, 31, N'iPhone 11 128Gb - 3000mAh - IPS - Beyaz Akıllı Telefon', N'iPhone 11 128Gb - 3000mAh - IPS - Beyaz Akıllı Telefon', 10, 10, 13499, 5, CAST(N'2022-05-12T23:54:38.7319159' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (82, 21, 31, N'iPhone 13 128Gb - 4000mAh - OLED Siyah Akıllı Telefon', N'iPhone 13 128Gb - 4000mAh - OLED Siyah Akıllı Telefon', 60, 60, 18999, 6, CAST(N'2022-05-12T23:55:19.0019623' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (83, 21, 32, N'Huawei Nova 9 128Gb - 5000mAh - Dokunmatik Mavi Akıllı Telefon', N'Huawei Nova 9 128Gb - 5000mAh - Dokunmatik Mavi Akıllı Telefon', 12, 34, 8799, 18, CAST(N'2022-05-12T23:56:13.5832440' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (84, 21, 33, N'Oppo A55 64gb - 4000mAh - HD Gökkuşağı Mavisi Akıllı Telefon', N'Oppo A55 64gb - 4000mAh - HD Gökkuşağı Mavisi Akıllı Telefon', 800, 800, 3999, 0, CAST(N'2022-05-12T23:56:46.2562131' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (85, 21, 34, N'SAMSUNG NOTE 20 256GB - 5000mAh - Parmak izi okuyucu - Bronz Akıllı Telefon', N'SAMSUNG NOTE 20 256GB - 5000mAh - Parmak izi okuyucu - Bronz Akıllı Telefon', 500, 500, 9999, 12, CAST(N'2022-05-12T23:57:17.0287630' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (86, 21, 34, N'Samsung Galaxy A52 128Gb - 3000mAh - HD Mavi Akıllı Telefon', N'Samsung Galaxy A52 128Gb - 3000mAh - HD Mavi Akıllı Telefon', 120, 120, 6399, 8, CAST(N'2022-05-12T23:57:47.0271635' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (87, 21, 33, N'Oppo A16 64gb - 3000mAh - OLED Mavi Akıllı Telefon', N'Oppo A16 64gb - 3000mAh - OLED Mavi Akıllı Telefon', 600, 600, 3799, 5, CAST(N'2022-05-12T23:58:37.2915582' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (88, 22, 38, N'APPLE MM313ZM/A IPHONE 13 PRO MAX MAGSAFE ÖZELLİKLİ KILIF- ŞEFFAF', N'APPLE MM313ZM/A IPHONE 13 PRO MAX MAGSAFE ÖZELLİKLİ KILIF- ŞEFFAF', 80, 80, 779, 5, CAST(N'2022-05-13T00:04:53.5207550' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (89, 22, 38, N'APPLE MWVG2ZM/A IPHONE 11 TELEFON KILIFI - ŞEFFAF', N'APPLE MWVG2ZM/A IPHONE 11 TELEFON KILIFI - ŞEFFAF', 600, 600, 499, 9, CAST(N'2022-05-13T00:05:14.9711225' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (90, 22, 41, N'SAMSUNG GALAXY S22 ULTRA CLEAR KILIF - ŞEFFAF', N'SAMSUNG GALAXY S22 ULTRA CLEAR KILIF - ŞEFFAF', 150, 150, 399, 0, CAST(N'2022-05-13T00:05:43.1473778' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (91, 22, 41, N'SAMSUNG EF-PG780TREGWW GALAXY S20 FE SİLİKON KILIF- KIRMIZI', N'SAMSUNG EF-PG780TREGWW GALAXY S20 FE SİLİKON KILIF- KIRMIZI', 400, 400, 249, 6, CAST(N'2022-05-13T00:06:06.7127428' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (92, 22, 43, N'HUAWEI P40 TELEFON KILIFI- SİYAH', N'HUAWEI P40 TELEFON KILIFI- SİYAH', 450, 450, 169, 2, CAST(N'2022-05-13T00:07:09.5329069' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (94, 22, 43, N'HUAWEI NOVA 9 PC KILIF - YEŞİL', N'HUAWEI NOVA 9 PC KILIF - YEŞİL', 450, 450, 200, 5, CAST(N'2022-05-13T00:10:35.9132619' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (95, 22, 43, N'HUAWEI NOVA 11 PC KILIF - MAVİ', N'HUAWEI NOVA 11 PC KILIF - MAVİ', 600, 600, 319, 0, CAST(N'2022-05-13T00:11:15.8939771' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (96, 22, 41, N'SAMSUNG GALAXY S22 ULTRA KAYIŞLI SİLİKON KILIF - BEYAZ', N'SAMSUNG GALAXY S22 ULTRA KAYIŞLI SİLİKON KILIF - BEYAZ', 55, 55, 899, 60, CAST(N'2022-05-13T00:11:51.9710863' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (97, 22, 41, N'SAMSUNG GALAXY S52 PLUS KAYIŞLI SİLİKON KILIF - LACİVERT', N'SAMSUNG GALAXY S52 PLUS KAYIŞLI SİLİKON KILIF - LACİVERT', 250, 250, 899, 60, CAST(N'2022-05-13T00:12:13.1078791' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (98, 23, 35, N'CANON EOS 250D 18-55 DC 3inch 24.1 MEGAPİKSEL DİJİTAL SLR DIJITAL FOTOĞRAF MAKİNESİ', N'CANON EOS 250D 18-55 DC 3inch 24.1 MEGAPİKSEL DİJİTAL SLR DIJITAL FOTOĞRAF MAKİNESİ', 100, 100, 10199, 71, CAST(N'2022-05-13T00:13:55.0460023' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (99, 23, 37, N'SONY DSCW830B.CE3 20.1 MP 2.7inch DIJITAL FOTOĞRAF MAKİNESİ (BLACK)', N'SONY DSCW830B.CE3 20.1 MP 2.7inch DIJITAL FOTOĞRAF MAKİNESİ (BLACK)', 150, 150, 2699, 6, CAST(N'2022-05-13T00:14:40.5288227' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (100, 23, 37, N'SONY ALPHA A7 III + 28-70MM 24 MP 3inch  AYNASIZ DİJİTAL FOTOĞRAF MAKİNESİ', N'SONY ALPHA A7 III + 28-70MM 24 MP 3inch  AYNASIZ DİJİTAL FOTOĞRAF MAKİNESİ', 35, 35, 41748, 23, CAST(N'2022-05-13T00:15:33.7402507' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (101, 23, 36, N'NIKON D7500 18-140 20.9 MP 3inch DİJİTAL SLR FOTOĞRAF MAKİNESİ', N'NIKON D7500 18-140 20.9 MP 3inch DİJİTAL SLR FOTOĞRAF MAKİNESİ', 48, 48, 22949, 41, CAST(N'2022-05-13T00:16:18.0774681' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (102, 23, 35, N'CANON EOS 250D 18-55 DC 24.1 MP 3inch  DİJİTAL SLR DIJITAL FOTOĞRAF MAKİNESİ', N'CANON EOS 250D 18-55 DC 24.1 MP 3inch  DİJİTAL SLR DIJITAL FOTOĞRAF MAKİNESİ', 350, 350, 10199, 45, CAST(N'2022-05-13T00:17:00.1334930' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (103, 23, 35, N'CANON EOS 90D 18-135 IS STM 32.5 MP 3 2.7inch  LCD EKRAN SLR FOTOĞRAF MAKİNESİ', N'CANON EOS 90D 18-135 IS STM 32.5 MP 3 2.7inch  LCD EKRAN SLR FOTOĞRAF MAKİNESİ', 200, 200, 27299, 0, CAST(N'2022-05-13T00:17:42.6793146' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (104, 23, 35, N'CANON EOS 250D 18-55 IS 24.1 MP 3inch DİJİTAL SLR DIJITAL FOTOĞRAF MAKİNESİ', N'CANON EOS 250D 18-55 IS 24.1 MP 3inch DİJİTAL SLR DIJITAL FOTOĞRAF MAKİNESİ', 70, 70, 10199, 5, CAST(N'2022-05-13T00:18:19.1071225' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (105, 24, 42, N'GOPRO HERO 10 2.7inch BLACK AKSİYON KAMERA', N'GOPRO HERO 10 2.7inch BLACK AKSİYON KAMERA', 300, 300, 10988, 60, CAST(N'2022-05-13T00:20:32.6052598' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (106, 24, 45, N'SONY HDRCX-625 FULL HD 3inch VIDEO KAMERA', N'SONY HDRCX-625 FULL HD 3inch VIDEO KAMERA', 70, 70, 8129, 37, CAST(N'2022-05-13T00:22:37.5359321' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (107, 24, 44, N'EVEREST EVERCAR G20 1080P FULL HD 2.7inch ARAÇ İÇİ KAMERA', N'EVEREST EVERCAR G20 1080P FULL HD 2.7inch ARAÇ İÇİ KAMERA', 700, 700, 343, 8, CAST(N'2022-05-13T00:23:27.9144792' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (108, 24, 42, N'GOPRO HERO 9 BLACK 5K 3inch AKSİYON KAMERA GoPro', N'GOPRO HERO 9 BLACK 5K 3inch AKSİYON KAMERA GoPro', 95, 95, 8898, 0, CAST(N'2022-05-13T00:24:26.6172612' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (109, 10, 46, N'LOGITECH K120 KABLOLU USB Q KLAVYE', N'LOGITECH K120 KABLOLU USB Q KLAVYE', 1000, 1000, 159, 9, CAST(N'2022-05-13T00:27:13.1616642' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (110, 10, 49, N'Everest KB-73M MINICO  Kablolu USB Rainbow Aydınlatmalı Q Klavye', N'Everest KB-73M MINICO  Kablolu USB Rainbow Aydınlatmalı Q Klavye', 55, 55, 283, 1, CAST(N'2022-05-13T00:27:38.1754830' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (111, 10, 47, N'Rampage KB-R900 CRYSTAL  Kablolu USB Gökkuşağı Aydınlatmalı Q Kristal Tuşlu Oyuncu Klavyesi', N'Rampage KB-R900 CRYSTAL  Kablolu USB Gökkuşağı Aydınlatmalı Q Kristal Tuşlu Oyuncu Klavyesi', 2000, 2000, 998, 6, CAST(N'2022-05-13T00:28:21.4737569' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (112, 10, 48, N'ASUS ROG CLAYMORE II AURA SYNC   Kablolu USB RGB BİLEK DESTEĞİ MEKANİK OYUNCU KLAVYESİ', N'ASUS ROG CLAYMORE II AURA SYNC   Kablolu USB RGB BİLEK DESTEĞİ MEKANİK OYUNCU KLAVYESİ', 900, 900, 4924, 5, CAST(N'2022-05-13T00:28:50.9461488' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (113, 10, 50, N'RAZER BLACKWIDOW V3 KLAVYE TÜRKÇE Kablolu USB', N'RAZER BLACKWIDOW V3 KLAVYE TÜRKÇE Kablolu USB', 650, 650, 1300, 8, CAST(N'2022-05-13T00:29:27.9248275' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (114, 10, 46, N'LOGITECH G G915 Kablosuz Gaming Klavye (ING)', N'LOGITECH G G915 Kablosuz Gaming Klavye (ING)', 70, 70, 3799, 95, CAST(N'2022-05-13T00:29:57.8154867' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (115, 10, 46, N'LOGITECH G G915 TKL Kablosuz Gaming Klavye (ING)', N'LOGITECH G G915 TKL Kablosuz Gaming Klavye (ING)', 1, 1, 3499, 0, CAST(N'2022-05-13T00:30:17.0098879' AS DateTime2), 1)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [BrandId], [ProductName], [ProductDescription], [Quantity], [UnitsInStock], [UnitPrice], [Discount], [ProductCreatedDate], [Status]) VALUES (116, 9, 11, N'Intel Core i9 10900K Soket 1200 11. Nesil 3.50GHz 16MB Önbellek 14nm İşlemci', N'Intel Core i9 10900K Soket 1200 11. Nesil 3.50GHz 16MB Önbellek 14nm İşlemci', 60, 60, 2000, 1, CAST(N'2022-06-02T10:33:50.7738357' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [Status], [Password]) VALUES (1, N'Zeynel', N'Toplar', N'zt.2601@hotmail.com', 1, N'')
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [Status], [Password]) VALUES (2, N'Mehmet Ali', N'Asil', N'masil@gmail.com', 1, N'')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [IX_Addresses_CustomerId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Addresses_CustomerId] ON [dbo].[Addresses]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Baskets_CustomerId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Baskets_CustomerId] ON [dbo].[Baskets]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Baskets_ProductId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Baskets_ProductId] ON [dbo].[Baskets]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Brands_CategoryId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Brands_CategoryId] ON [dbo].[Brands]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryOptions_CategoryId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_CategoryOptions_CategoryId] ON [dbo].[CategoryOptions]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryOptions_OptionId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_CategoryOptions_OptionId] ON [dbo].[CategoryOptions]
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Favorites_CustomerId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Favorites_CustomerId] ON [dbo].[Favorites]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Favorites_ProductId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Favorites_ProductId] ON [dbo].[Favorites]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Images_ProductId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Images_ProductId] ON [dbo].[Images]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OptionValues_OptionId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_OptionValues_OptionId] ON [dbo].[OptionValues]
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_CustomerId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CustomerId] ON [dbo].[Orders]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_OrderStatusId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_OrderStatusId] ON [dbo].[Orders]
(
	[OrderStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_PaymentId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_PaymentId] ON [dbo].[Orders]
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductOption_OptionId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_ProductOption_OptionId] ON [dbo].[ProductOption]
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductOption_ProductId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_ProductOption_ProductId] ON [dbo].[ProductOption]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_BrandId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Products_BrandId] ON [dbo].[Products]
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shipments_OrderId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Shipments_OrderId] ON [dbo].[Shipments]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Shipments_ShipperId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_Shipments_ShipperId] ON [dbo].[Shipments]
(
	[ShipperId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserOperationClaims_OperationClaimId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_UserOperationClaims_OperationClaimId] ON [dbo].[UserOperationClaims]
(
	[OperationClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserOperationClaims_UserId]    Script Date: 20.06.2022 01:06:45 ******/
CREATE NONCLUSTERED INDEX [IX_UserOperationClaims_UserId] ON [dbo].[UserOperationClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Baskets] ADD  DEFAULT (CONVERT([bit],(0))) FOR [BasketStatus]
GO
ALTER TABLE [dbo].[Customers] ADD  DEFAULT (N'') FOR [Password]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (N'') FOR [Password]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Customers_CustomerId]
GO
ALTER TABLE [dbo].[Baskets]  WITH CHECK ADD  CONSTRAINT [FK_Baskets_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Baskets] CHECK CONSTRAINT [FK_Baskets_Customers_CustomerId]
GO
ALTER TABLE [dbo].[Baskets]  WITH CHECK ADD  CONSTRAINT [FK_Baskets_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Baskets] CHECK CONSTRAINT [FK_Baskets_Products_ProductId]
GO
ALTER TABLE [dbo].[Brands]  WITH CHECK ADD  CONSTRAINT [FK_Brands_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Brands] CHECK CONSTRAINT [FK_Brands_Categories]
GO
ALTER TABLE [dbo].[Brands]  WITH CHECK ADD  CONSTRAINT [FK_Brands_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Brands] CHECK CONSTRAINT [FK_Brands_Categories_CategoryId]
GO
ALTER TABLE [dbo].[CategoryOptions]  WITH CHECK ADD  CONSTRAINT [FK_CategoryOptions_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[CategoryOptions] CHECK CONSTRAINT [FK_CategoryOptions_Categories_CategoryId]
GO
ALTER TABLE [dbo].[CategoryOptions]  WITH CHECK ADD  CONSTRAINT [FK_CategoryOptions_Options_OptionId] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Options] ([OptionId])
GO
ALTER TABLE [dbo].[CategoryOptions] CHECK CONSTRAINT [FK_CategoryOptions_Options_OptionId]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Customers_CustomerId]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Products_ProductId]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Products_ProductId]
GO
ALTER TABLE [dbo].[OptionValues]  WITH CHECK ADD  CONSTRAINT [FK_OptionValues_Options_OptionId] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Options] ([OptionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OptionValues] CHECK CONSTRAINT [FK_OptionValues_Options_OptionId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers_CustomerId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderStatuses_OrderStatusId] FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[OrderStatuses] ([OrderStatusId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_OrderStatuses_OrderStatusId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payments_PaymentId] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payments] ([PaymentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payments_PaymentId]
GO
ALTER TABLE [dbo].[ProductOption]  WITH CHECK ADD  CONSTRAINT [FK_ProductOption_Options_OptionId] FOREIGN KEY([OptionId])
REFERENCES [dbo].[Options] ([OptionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductOption] CHECK CONSTRAINT [FK_ProductOption_Options_OptionId]
GO
ALTER TABLE [dbo].[ProductOption]  WITH CHECK ADD  CONSTRAINT [FK_ProductOption_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductOption] CHECK CONSTRAINT [FK_ProductOption_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([BrandId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Shipments]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Shipments] CHECK CONSTRAINT [FK_Shipments_Orders_OrderId]
GO
ALTER TABLE [dbo].[Shipments]  WITH CHECK ADD  CONSTRAINT [FK_Shipments_Shippers_ShipperId] FOREIGN KEY([ShipperId])
REFERENCES [dbo].[Shippers] ([ShipperId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Shipments] CHECK CONSTRAINT [FK_Shipments_Shippers_ShipperId]
GO
ALTER TABLE [dbo].[UserOperationClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaims_OperationClaims_OperationClaimId] FOREIGN KEY([OperationClaimId])
REFERENCES [dbo].[OperationClaims] ([OperationClaimID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserOperationClaims] CHECK CONSTRAINT [FK_UserOperationClaims_OperationClaims_OperationClaimId]
GO
ALTER TABLE [dbo].[UserOperationClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserOperationClaims] CHECK CONSTRAINT [FK_UserOperationClaims_Users_UserId]
GO
USE [master]
GO
ALTER DATABASE [DbProjeETicaret] SET  READ_WRITE 
GO
