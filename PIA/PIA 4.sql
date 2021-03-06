USE [AgenciaDeViajes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Viaje]') AND type in (N'U'))
ALTER TABLE [dbo].[Viaje] DROP CONSTRAINT IF EXISTS [FK_Viaje_Ruta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ventas]') AND type in (N'U'))
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT IF EXISTS [FK_Ventas_Pagos]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ventas]') AND type in (N'U'))
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT IF EXISTS [FK_Ventas_DetalleVenta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transporte]') AND type in (N'U'))
ALTER TABLE [dbo].[Transporte] DROP CONSTRAINT IF EXISTS [FK_Transporte_Compañia]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoBoleto]') AND type in (N'U'))
ALTER TABLE [dbo].[TipoBoleto] DROP CONSTRAINT IF EXISTS [FK_TipoBoleto_Categoria]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruta]') AND type in (N'U'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT IF EXISTS [FK_Ruta_Transporte]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruta]') AND type in (N'U'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT IF EXISTS [FK_Ruta_DetalleRuta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruta]') AND type in (N'U'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT IF EXISTS [FK_Ruta_Ciudad1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruta]') AND type in (N'U'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT IF EXISTS [FK_Ruta_Ciudad]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paquete]') AND type in (N'U'))
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT IF EXISTS [FK_Paquete_Viaje1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paquete]') AND type in (N'U'))
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT IF EXISTS [FK_Paquete_Ventas]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paquete]') AND type in (N'U'))
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT IF EXISTS [FK_Paquete_Hotel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paquete]') AND type in (N'U'))
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT IF EXISTS [FK_Paquete_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK_Hotel_Ciudad]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleVenta]') AND type in (N'U'))
ALTER TABLE [dbo].[DetalleVenta] DROP CONSTRAINT IF EXISTS [FK_DetalleVenta_Boleto]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Boleto]') AND type in (N'U'))
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT IF EXISTS [FK_Boleto_Viaje]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Boleto]') AND type in (N'U'))
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT IF EXISTS [FK_Boleto_TipoBoleto]
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[Viaje]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[TipoBoleto]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[TipoBoleto]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[Ruta]
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[Paquete]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[Pagos]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[DetalleVenta]
GO
/****** Object:  Table [dbo].[DetalleRuta]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[DetalleRuta]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[Categoria]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[Boleto]
GO
/****** Object:  View [dbo].[TotalHotelView]    Script Date: 30/10/2017 19:53:47 ******/
DROP VIEW IF EXISTS [dbo].[TotalHotelView]
GO
/****** Object:  View [dbo].[HotelCiudadView]    Script Date: 30/10/2017 19:53:47 ******/
DROP VIEW IF EXISTS [dbo].[HotelCiudadView]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[Hotel]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[Ciudad]
GO
/****** Object:  View [dbo].[TotalDeCompañias]    Script Date: 30/10/2017 19:53:47 ******/
DROP VIEW IF EXISTS [dbo].[TotalDeCompañias]
GO
/****** Object:  View [dbo].[CompañiaTransporteView]    Script Date: 30/10/2017 19:53:47 ******/
DROP VIEW IF EXISTS [dbo].[CompañiaTransporteView]
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[Transporte]
GO
/****** Object:  Table [dbo].[Compañia]    Script Date: 30/10/2017 19:53:47 ******/
DROP TABLE IF EXISTS [dbo].[Compañia]
GO
USE [master]
GO
/****** Object:  Database [AgenciaDeViajes]    Script Date: 30/10/2017 19:53:47 ******/
DROP DATABASE IF EXISTS [AgenciaDeViajes]
GO
/****** Object:  Database [AgenciaDeViajes]    Script Date: 30/10/2017 19:53:47 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'AgenciaDeViajes')
BEGIN
CREATE DATABASE [AgenciaDeViajes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AgenciaDeViajes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\AgenciaDeViajes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AgenciaDeViajes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\AgenciaDeViajes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
GO
ALTER DATABASE [AgenciaDeViajes] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AgenciaDeViajes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AgenciaDeViajes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET ARITHABORT OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AgenciaDeViajes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AgenciaDeViajes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AgenciaDeViajes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AgenciaDeViajes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AgenciaDeViajes] SET  MULTI_USER 
GO
ALTER DATABASE [AgenciaDeViajes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AgenciaDeViajes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AgenciaDeViajes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AgenciaDeViajes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AgenciaDeViajes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AgenciaDeViajes] SET QUERY_STORE = OFF
GO
USE [AgenciaDeViajes]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [AgenciaDeViajes]
GO
/****** Object:  Table [dbo].[Compañia]    Script Date: 30/10/2017 19:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Compañia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Compañia](
	[IdCompañia] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Compañia] PRIMARY KEY CLUSTERED 
(
	[IdCompañia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 30/10/2017 19:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transporte]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Transporte](
	[IdTransporte] [uniqueidentifier] NOT NULL,
	[Capacidad] [int] NULL,
	[IdCompañia] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Transporte] PRIMARY KEY CLUSTERED 
(
	[IdTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  View [dbo].[CompañiaTransporteView]    Script Date: 30/10/2017 19:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[CompañiaTransporteView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[CompañiaTransporteView] as
Select Compañia.IdCompañia,Compañia.Nombre,Transporte.Capacidad
FROM Compañia
INNER JOIN Transporte ON Compañia.IdCompañia = Transporte.IdCompañia;' 
GO
/****** Object:  View [dbo].[TotalDeCompañias]    Script Date: 30/10/2017 19:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[TotalDeCompañias]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[TotalDeCompañias] as
Select count(Nombre) as NumeroDeCompañias From CompañiaTransporteView ' 
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 30/10/2017 19:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ciudad]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ciudad](
	[IdCiudad] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Ciudad1] PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 30/10/2017 19:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Hotel](
	[IdHotel] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IdCiudad] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[IdHotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  View [dbo].[HotelCiudadView]    Script Date: 30/10/2017 19:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[HotelCiudadView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[HotelCiudadView] as
Select Hotel.Nombre as Hotel,Ciudad.Nombre as Ciudad
FROM Hotel
INNER JOIN Ciudad ON Hotel.IdCiudad = Ciudad.IdCiudad;' 
GO
/****** Object:  View [dbo].[TotalHotelView]    Script Date: 30/10/2017 19:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[TotalHotelView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[TotalHotelView] as
Select Count(Hotel) as TotalDeHoteles
FROM HotelCiudadView' 
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 30/10/2017 19:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Boleto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Boleto](
	[IdBoleto] [uniqueidentifier] NOT NULL,
	[IdViaje] [uniqueidentifier] NULL,
	[IdTipoBoleto] [uniqueidentifier] NULL,
	[PrecioTotal] [money] NULL,
 CONSTRAINT [PK_Boleto] PRIMARY KEY CLUSTERED 
(
	[IdBoleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 30/10/2017 19:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categoria]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [uniqueidentifier] NOT NULL,
	[Categoria] [varchar](50) NULL,
	[Costo] [money] NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 30/10/2017 19:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Calle] [varchar](50) NULL,
	[Colonia] [varchar](50) NULL,
	[Municipio] [varchar](50) NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DetalleRuta]    Script Date: 30/10/2017 19:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleRuta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DetalleRuta](
	[IdDetalleRuta] [uniqueidentifier] NOT NULL,
	[FechaSalida] [date] NULL,
	[HoraSalida] [time](7) NULL,
 CONSTRAINT [PK_DetalleRuta] PRIMARY KEY CLUSTERED 
(
	[IdDetalleRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 30/10/2017 19:53:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleVenta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DetalleVenta](
	[IdDetalleVenta] [uniqueidentifier] NOT NULL,
	[IdBoleto] [uniqueidentifier] NULL,
	[Cantidad] [int] NULL,
	[MontoFinal] [money] NULL,
	[Cambio] [money] NULL,
 CONSTRAINT [PK_DetalleVenta] PRIMARY KEY CLUSTERED 
(
	[IdDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 30/10/2017 19:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pagos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pagos](
	[IdPagos] [uniqueidentifier] NOT NULL,
	[TipoPago] [varchar](50) NULL,
	[Fecha] [date] NULL,
	[MontoDePago] [money] NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[IdPagos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 30/10/2017 19:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paquete]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Paquete](
	[IdPaquete] [uniqueidentifier] NOT NULL,
	[IdCliente] [uniqueidentifier] NOT NULL,
	[IdViaje] [uniqueidentifier] NULL,
	[IdHotel] [uniqueidentifier] NULL,
	[IdVentas] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Paquete] PRIMARY KEY CLUSTERED 
(
	[IdPaquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 30/10/2017 19:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ruta](
	[IdRuta] [uniqueidentifier] NOT NULL,
	[IdTranporte] [uniqueidentifier] NULL,
	[CiudadOrigen] [uniqueidentifier] NULL,
	[CiudadDestino] [uniqueidentifier] NULL,
	[PrecioBase] [money] NULL,
	[IdDetalleRuta] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Ruta] PRIMARY KEY CLUSTERED 
(
	[IdRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TipoBoleto]    Script Date: 30/10/2017 19:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoBoleto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoBoleto](
	[IdTipoBoleto] [uniqueidentifier] NOT NULL,
	[Tipo] [varchar](50) NULL,
	[IdCategoria] [uniqueidentifier] NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_TipoBoleto] PRIMARY KEY CLUSTERED 
(
	[IdTipoBoleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 30/10/2017 19:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ventas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ventas](
	[IdVentas] [uniqueidentifier] NOT NULL,
	[Monto] [money] NULL,
	[Fecha] [date] NULL,
	[Hora] [time](7) NULL,
	[IdDetalleVenta] [uniqueidentifier] NULL,
	[IdPagos] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[IdVentas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Viaje]    Script Date: 30/10/2017 19:53:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Viaje]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Viaje](
	[IdViaje] [uniqueidentifier] NOT NULL,
	[IdRuta] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Viaje] PRIMARY KEY CLUSTERED 
(
	[IdViaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'4591d7dc-d299-47c3-af6f-082c7b779215', N'Puebla')
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'6fa55e41-a7a6-4b39-b71a-2c2b3eb27846', N'Rivera Maya')
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'1c2154aa-9827-435c-9b0d-4559c94094ca', N'Cancun')
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'4543bb91-90d8-459f-83cf-4cbbd76c3149', N'Guadalajara')
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'683c3e87-3b93-4a3e-a476-6c47fd9869bb', N'Los cabos')
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'58e429be-51cc-40cd-bed4-858b708c52f1', N'Tijuana')
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'30163029-1120-4709-bc6e-efc484fd4995', N'Puerto Vallarta')
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'99286c76-216e-404c-8b69-fc480e9221ac', N'Mazatlan')
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'84549593-dc6a-4e8a-b679-fe77fecdc849', N'Ciudad de Mexico')
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'8706e8a0-ea1f-4d9b-ada6-fe92b514a5f0', N'Oaxaca')
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'517db966-b4df-4b89-8932-44cd677e7dd3', N'AeroMexico')
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'5ffbf266-d8fe-46f6-a6ab-78b474c072f0', N'Volaris')
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'3e4c6fc6-8587-4d88-ac39-9e9ca437d1b5', N'VivaAerobus')
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'e3a76440-1ae2-41d0-a485-c45cf50c7ae2', N'Interjet')
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'733b88e2-05d0-4952-a97e-e4936ba16f2d', N'Magnicharters')
INSERT [dbo].[Hotel] ([IdHotel], [Nombre], [IdCiudad]) VALUES (N'fb2efcf1-269e-45eb-ae2b-11120349e9cc', N'Krystal Urban', N'1c2154aa-9827-435c-9b0d-4559c94094ca')
INSERT [dbo].[Hotel] ([IdHotel], [Nombre], [IdCiudad]) VALUES (N'49ef86ad-8d96-418e-af4e-28d85bef61c0', N'Barcelo Maya Caribe', N'6fa55e41-a7a6-4b39-b71a-2c2b3eb27846')
INSERT [dbo].[Hotel] ([IdHotel], [Nombre], [IdCiudad]) VALUES (N'76b723c8-5b82-4dee-bdc8-5fa65c13a36a', N'Paradisus', N'1c2154aa-9827-435c-9b0d-4559c94094ca')
INSERT [dbo].[Hotel] ([IdHotel], [Nombre], [IdCiudad]) VALUES (N'dad0a13e-267d-4223-b45f-a5ef639d5374', N'Casa Rosa', N'4591d7dc-d299-47c3-af6f-082c7b779215')
INSERT [dbo].[Hotel] ([IdHotel], [Nombre], [IdCiudad]) VALUES (N'e0a4f54b-2b1c-43c0-8d8c-eadebc1d0dc8', N'Emporio Hotel', N'1c2154aa-9827-435c-9b0d-4559c94094ca')
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'eb95b81f-eb29-40a2-9894-6e2e89375ce9', 242, N'517db966-b4df-4b89-8932-44cd677e7dd3')
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'963e2d2a-7148-4d0c-a593-b6a722e27ec8', 192, N'e3a76440-1ae2-41d0-a485-c45cf50c7ae2')
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'042b3f91-ccc9-4b27-bd83-db8224e1ae4f', 140, N'733b88e2-05d0-4952-a97e-e4936ba16f2d')
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'3a6a1d6d-b313-4e9d-99ad-e320eec31bff', 180, N'3e4c6fc6-8587-4d88-ac39-9e9ca437d1b5')
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'a5c7b70e-b749-4251-8bb2-f281d0e4cd36', 220, N'5ffbf266-d8fe-46f6-a6ab-78b474c072f0')
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_TipoBoleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_TipoBoleto] FOREIGN KEY([IdTipoBoleto])
REFERENCES [dbo].[TipoBoleto] ([IdTipoBoleto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_TipoBoleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_TipoBoleto]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_Viaje]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_Viaje] FOREIGN KEY([IdViaje])
REFERENCES [dbo].[Viaje] ([IdViaje])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_Viaje]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_Viaje]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVenta_Boleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVenta]'))
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Boleto] FOREIGN KEY([IdBoleto])
REFERENCES [dbo].[Boleto] ([IdBoleto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVenta_Boleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVenta]'))
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Boleto]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_Ciudad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel]'))
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Ciudad] FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_Ciudad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel]'))
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_Hotel_Ciudad]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Cliente]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Hotel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Hotel] FOREIGN KEY([IdVentas])
REFERENCES [dbo].[Hotel] ([IdHotel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Hotel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Hotel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Ventas] FOREIGN KEY([IdVentas])
REFERENCES [dbo].[Ventas] ([IdVentas])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Ventas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Viaje1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Viaje1] FOREIGN KEY([IdViaje])
REFERENCES [dbo].[Viaje] ([IdViaje])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Viaje1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Viaje1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Ciudad] FOREIGN KEY([CiudadOrigen])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Ciudad]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Ciudad1] FOREIGN KEY([CiudadDestino])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Ciudad1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_DetalleRuta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_DetalleRuta] FOREIGN KEY([IdDetalleRuta])
REFERENCES [dbo].[DetalleRuta] ([IdDetalleRuta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_DetalleRuta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_DetalleRuta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Transporte]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Transporte] FOREIGN KEY([IdTranporte])
REFERENCES [dbo].[Transporte] ([IdTransporte])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Transporte]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Transporte]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TipoBoleto_Categoria]') AND parent_object_id = OBJECT_ID(N'[dbo].[TipoBoleto]'))
ALTER TABLE [dbo].[TipoBoleto]  WITH CHECK ADD  CONSTRAINT [FK_TipoBoleto_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TipoBoleto_Categoria]') AND parent_object_id = OBJECT_ID(N'[dbo].[TipoBoleto]'))
ALTER TABLE [dbo].[TipoBoleto] CHECK CONSTRAINT [FK_TipoBoleto_Categoria]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transporte_Compañia]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transporte]'))
ALTER TABLE [dbo].[Transporte]  WITH CHECK ADD  CONSTRAINT [FK_Transporte_Compañia] FOREIGN KEY([IdCompañia])
REFERENCES [dbo].[Compañia] ([IdCompañia])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transporte_Compañia]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transporte]'))
ALTER TABLE [dbo].[Transporte] CHECK CONSTRAINT [FK_Transporte_Compañia]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_DetalleVenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_DetalleVenta] FOREIGN KEY([IdDetalleVenta])
REFERENCES [dbo].[DetalleVenta] ([IdDetalleVenta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_DetalleVenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_DetalleVenta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_Pagos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Pagos] FOREIGN KEY([IdPagos])
REFERENCES [dbo].[Pagos] ([IdPagos])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_Pagos]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Pagos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Viaje_Ruta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Viaje]'))
ALTER TABLE [dbo].[Viaje]  WITH CHECK ADD  CONSTRAINT [FK_Viaje_Ruta] FOREIGN KEY([IdRuta])
REFERENCES [dbo].[Ruta] ([IdRuta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Viaje_Ruta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Viaje]'))
ALTER TABLE [dbo].[Viaje] CHECK CONSTRAINT [FK_Viaje_Ruta]
GO
USE [master]
GO
ALTER DATABASE [AgenciaDeViajes] SET  READ_WRITE 
GO
