USE [master]
GO
/****** Object:  Database [AgenciaDeViajes]    Script Date: 11/07/2017 23:27:25 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'AgenciaDeViajes')
BEGIN
CREATE DATABASE [AgenciaDeViajes] ON  PRIMARY 
( NAME = N'AgenciaDeViajes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\AgenciaDeViajes.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AgenciaDeViajes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\AgenciaDeViajes_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
GO
ALTER DATABASE [AgenciaDeViajes] SET COMPATIBILITY_LEVEL = 100
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
ALTER DATABASE [AgenciaDeViajes] SET AUTO_CREATE_STATISTICS ON
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
ALTER DATABASE [AgenciaDeViajes] SET  READ_WRITE
GO
ALTER DATABASE [AgenciaDeViajes] SET RECOVERY SIMPLE
GO
ALTER DATABASE [AgenciaDeViajes] SET  MULTI_USER
GO
ALTER DATABASE [AgenciaDeViajes] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [AgenciaDeViajes] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'AgenciaDeViajes', N'ON'
GO
USE [AgenciaDeViajes]
GO
/****** Object:  ForeignKey [FK_Transporte_Compañia]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transporte_Compañia]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transporte]'))
ALTER TABLE [dbo].[Transporte] DROP CONSTRAINT [FK_Transporte_Compañia]
GO
/****** Object:  ForeignKey [FK_TipoBoleto_Categoria]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TipoBoleto_Categoria]') AND parent_object_id = OBJECT_ID(N'[dbo].[TipoBoleto]'))
ALTER TABLE [dbo].[TipoBoleto] DROP CONSTRAINT [FK_TipoBoleto_Categoria]
GO
/****** Object:  ForeignKey [FK_Hotel_Habitacion]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel]'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK_Hotel_Habitacion]
GO
/****** Object:  ForeignKey [FK_Ruta_Ciudad]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_Ciudad]
GO
/****** Object:  ForeignKey [FK_Ruta_Ciudad1]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_Ciudad1]
GO
/****** Object:  ForeignKey [FK_Ruta_DetalleRuta]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_DetalleRuta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_DetalleRuta]
GO
/****** Object:  ForeignKey [FK_Ruta_Transporte]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Transporte]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_Transporte]
GO
/****** Object:  ForeignKey [FK_Boleto_Ruta]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_Ruta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_Boleto_Ruta]
GO
/****** Object:  ForeignKey [FK_Boleto_TipoBoleto]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_TipoBoleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_Boleto_TipoBoleto]
GO
/****** Object:  ForeignKey [FK_DetalleVenta_Boleto]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVenta_Boleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVenta]'))
ALTER TABLE [dbo].[DetalleVenta] DROP CONSTRAINT [FK_DetalleVenta_Boleto]
GO
/****** Object:  ForeignKey [FK_DetalleVenta_Hotel]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVenta_Hotel]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVenta]'))
ALTER TABLE [dbo].[DetalleVenta] DROP CONSTRAINT [FK_DetalleVenta_Hotel]
GO
/****** Object:  ForeignKey [FK_Venta_DetalleVenta]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_DetalleVenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_DetalleVenta]
GO
/****** Object:  ForeignKey [FK_Pago_Venta]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pago_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pago]'))
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_Pago_Venta]
GO
/****** Object:  ForeignKey [FK_Paquete_Cliente]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT [FK_Paquete_Cliente]
GO
/****** Object:  ForeignKey [FK_Paquete_Venta]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT [FK_Paquete_Venta]
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT [FK_Paquete_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT [FK_Paquete_Venta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paquete]') AND type in (N'U'))
DROP TABLE [dbo].[Paquete]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pago_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pago]'))
ALTER TABLE [dbo].[Pago] DROP CONSTRAINT [FK_Pago_Venta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pago]') AND type in (N'U'))
DROP TABLE [dbo].[Pago]
GO
/****** Object:  UserDefinedFunction [dbo].[TotalPago]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TotalPago]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[TotalPago]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_DetalleVenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_DetalleVenta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venta]') AND type in (N'U'))
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVenta_Boleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVenta]'))
ALTER TABLE [dbo].[DetalleVenta] DROP CONSTRAINT [FK_DetalleVenta_Boleto]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVenta_Hotel]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVenta]'))
ALTER TABLE [dbo].[DetalleVenta] DROP CONSTRAINT [FK_DetalleVenta_Hotel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleVenta]') AND type in (N'U'))
DROP TABLE [dbo].[DetalleVenta]
GO
/****** Object:  UserDefinedFunction [dbo].[TotalDetalleVenta]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TotalDetalleVenta]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[TotalDetalleVenta]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_Ruta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_Boleto_Ruta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_TipoBoleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_Boleto_TipoBoleto]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Boleto]') AND type in (N'U'))
DROP TABLE [dbo].[Boleto]
GO
/****** Object:  UserDefinedFunction [dbo].[TotalBoleto]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TotalBoleto]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[TotalBoleto]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_Ciudad]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_Ciudad1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_DetalleRuta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_DetalleRuta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Transporte]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_Transporte]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruta]') AND type in (N'U'))
DROP TABLE [dbo].[Ruta]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel]'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK_Hotel_Habitacion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
DROP TABLE [dbo].[Hotel]
GO
/****** Object:  View [dbo].[CategoriaTipoBoletoView]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[CategoriaTipoBoletoView]'))
DROP VIEW [dbo].[CategoriaTipoBoletoView]
GO
/****** Object:  Table [dbo].[TipoBoleto]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TipoBoleto_Categoria]') AND parent_object_id = OBJECT_ID(N'[dbo].[TipoBoleto]'))
ALTER TABLE [dbo].[TipoBoleto] DROP CONSTRAINT [FK_TipoBoleto_Categoria]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoBoleto]') AND type in (N'U'))
DROP TABLE [dbo].[TipoBoleto]
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transporte_Compañia]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transporte]'))
ALTER TABLE [dbo].[Transporte] DROP CONSTRAINT [FK_Transporte_Compañia]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transporte]') AND type in (N'U'))
DROP TABLE [dbo].[Transporte]
GO
/****** Object:  UserDefinedFunction [dbo].[TotalHotel]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TotalHotel]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[TotalHotel]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ciudad]') AND type in (N'U'))
DROP TABLE [dbo].[Ciudad]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Compañia]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Compañia]') AND type in (N'U'))
DROP TABLE [dbo].[Compañia]
GO
/****** Object:  Table [dbo].[DetalleRuta]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleRuta]') AND type in (N'U'))
DROP TABLE [dbo].[DetalleRuta]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categoria]') AND type in (N'U'))
DROP TABLE [dbo].[Categoria]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 11/07/2017 23:27:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Habitacion]') AND type in (N'U'))
DROP TABLE [dbo].[Habitacion]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Habitacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Habitacion](
	[IdHabitacion] [uniqueidentifier] NOT NULL,
	[Monto] [money] NULL,
	[Cantidad] [int] NULL,
	[Descripcion] [varchar](50) NULL,
	[Dias] [int] NULL,
 CONSTRAINT [PK_Habitacion] PRIMARY KEY CLUSTERED 
(
	[IdHabitacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Habitacion] ([IdHabitacion], [Monto], [Cantidad], [Descripcion], [Dias]) VALUES (N'd4738416-2168-495a-a3f5-2423ca148b63', 2000.0000, 2, N'Suit', 3)
INSERT [dbo].[Habitacion] ([IdHabitacion], [Monto], [Cantidad], [Descripcion], [Dias]) VALUES (N'4ae6796e-2271-4874-b588-276be165dd11', 1000.0000, 1, N'Habitacion Promedio', 1)
INSERT [dbo].[Habitacion] ([IdHabitacion], [Monto], [Cantidad], [Descripcion], [Dias]) VALUES (N'ef198a22-8ea9-4a35-9011-7c33d1e3d367', 2000.0000, 1, N'Suit', 1)
INSERT [dbo].[Habitacion] ([IdHabitacion], [Monto], [Cantidad], [Descripcion], [Dias]) VALUES (N'ba16186b-90d2-4b87-8e5f-ade8bfcbfcf3', 1000.0000, 2, N'Habitacion Promedio', 2)
/****** Object:  Table [dbo].[Categoria]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categoria]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Costo] [money] NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Costo]) VALUES (N'a290c15f-9db0-4c6e-8928-066b163f557c', N'Preferencial', 75.0000)
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Costo]) VALUES (N'00633439-2264-42ac-9a4c-68a676869166', N'Gerencial', 100.0000)
INSERT [dbo].[Categoria] ([IdCategoria], [Nombre], [Costo]) VALUES (N'e8f3c9f9-faab-4bb2-ae7f-e4eb5f4db7e2', N'Turista', 50.0000)
/****** Object:  Table [dbo].[DetalleRuta]    Script Date: 11/07/2017 23:27:26 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[DetalleRuta] ([IdDetalleRuta], [FechaSalida], [HoraSalida]) VALUES (N'410909e0-01b7-461a-9b64-21f08c139d89', CAST(0xD33E0B00 AS Date), CAST(0x070008D6E8290000 AS Time))
INSERT [dbo].[DetalleRuta] ([IdDetalleRuta], [FechaSalida], [HoraSalida]) VALUES (N'52461f5e-865b-4116-b015-60dcbaa9b58f', CAST(0xD33D0B00 AS Date), CAST(0x07009CA6920C0000 AS Time))
INSERT [dbo].[DetalleRuta] ([IdDetalleRuta], [FechaSalida], [HoraSalida]) VALUES (N'739cde28-7ac6-406f-9fe8-657a166b3499', CAST(0x373E0B00 AS Date), CAST(0x070074053F470000 AS Time))
INSERT [dbo].[DetalleRuta] ([IdDetalleRuta], [FechaSalida], [HoraSalida]) VALUES (N'e390b68d-fd04-488d-8ce0-97a3ba8d68ec', CAST(0xCE3D0B00 AS Date), CAST(0x07001417C6680000 AS Time))
INSERT [dbo].[DetalleRuta] ([IdDetalleRuta], [FechaSalida], [HoraSalida]) VALUES (N'3bdfa013-5179-4e17-925a-ee7d08bdff80', CAST(0xC93D0B00 AS Date), CAST(0x0700E03495640000 AS Time))
/****** Object:  Table [dbo].[Compañia]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Compañia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Compañia](
	[IdCompañia] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Compañia] PRIMARY KEY CLUSTERED 
(
	[IdCompañia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'a1b747ba-7243-49a1-bfe0-24b93aa91f55', N'VivaAerobus')
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'e79c78d0-9ace-4a62-83c4-75c4f9d339e3', N'Interjet')
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'338d8255-73ed-4891-be10-ca82b4daff3f', N'Aeromar')
INSERT [dbo].[Compañia] ([IdCompañia], [Nombre]) VALUES (N'b5da0e84-72e7-44a0-917f-e9037056c6b9', N'Volaris')
/****** Object:  Table [dbo].[Cliente]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ApellidoPaterno] [varchar](50) NULL,
	[ApellidoMaterno] [varchar](50) NULL,
	[Telefono] [varchar](20) NULL,
	[Calle] [varchar](40) NULL,
	[Colonia] [varchar](40) NULL,
	[Municipio] [varchar](40) NULL,
	[Estado] [varchar](40) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Calle], [Colonia], [Municipio], [Estado]) VALUES (N'b4852062-990c-444a-b0f9-0058650eb23f', N'Alexandra', N'Zapata', N'Briones', N'1725850', N'Carbon', N'Santa Ana', N'Apodaca', N'Nuevo Leon')
INSERT [dbo].[Cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Telefono], [Calle], [Colonia], [Municipio], [Estado]) VALUES (N'7449a54a-a575-45c4-b661-7042dc3175ee', N'Brando', N'Francisco', N'Vargas', N'1671986', N'Plata', N'Fomerrey 22', N'Santa Catarina', N'Nuevo Leon')
/****** Object:  Table [dbo].[Ciudad]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ciudad]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ciudad](
	[IdCiudad] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'cc04b08c-9e70-4341-967c-206c7c3de8db', N'Cancun')
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'968926b5-c58b-4db9-99f9-78a413ca0a45', N'Acapulco')
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'fb5098ca-a1e6-46bd-ad19-87c56660cc63', N'Mazatlan')
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'01e863bc-0933-43b5-87f0-9c7e52ffebb7', N'Ciudad de Mexico')
INSERT [dbo].[Ciudad] ([IdCiudad], [Nombre]) VALUES (N'2e6c7275-1267-48e3-9230-a180a0aa0d39', N'Puerto Vallarta')
/****** Object:  UserDefinedFunction [dbo].[TotalHotel]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TotalHotel]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create function [dbo].[TotalHotel]
(@ID uniqueidentifier)
returns Money
begin
return
(Select Monto * Cantidad * Dias
From Habitacion
Where Habitacion.IdHabitacion = @ID)
end;' 
END
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 11/07/2017 23:27:26 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'0e442e71-00c5-4daa-8b68-6c05279486f7', 190, N'b5da0e84-72e7-44a0-917f-e9037056c6b9')
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'5ee1ffa5-f061-42a5-a9e3-8f920594f259', 200, N'338d8255-73ed-4891-be10-ca82b4daff3f')
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'c58f58fe-1c7e-4608-99d3-b47f0daa08e5', 100, N'a1b747ba-7243-49a1-bfe0-24b93aa91f55')
INSERT [dbo].[Transporte] ([IdTransporte], [Capacidad], [IdCompañia]) VALUES (N'75a2b1fc-18ca-4a9c-b35c-fb2b087dd17e', 120, N'e79c78d0-9ace-4a62-83c4-75c4f9d339e3')
/****** Object:  Table [dbo].[TipoBoleto]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoBoleto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoBoleto](
	[IdTipoBoleto] [uniqueidentifier] NOT NULL,
	[Tipo] [varchar](40) NULL,
	[Precio] [money] NULL,
	[IdCategoria] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TipoBoleto] PRIMARY KEY CLUSTERED 
(
	[IdTipoBoleto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TipoBoleto] ([IdTipoBoleto], [Tipo], [Precio], [IdCategoria]) VALUES (N'62787810-9b38-4319-9afa-65ce5e15f598', N'Adulto', 500.0000, N'e8f3c9f9-faab-4bb2-ae7f-e4eb5f4db7e2')
INSERT [dbo].[TipoBoleto] ([IdTipoBoleto], [Tipo], [Precio], [IdCategoria]) VALUES (N'bb37ac8a-e717-4a59-9a4b-6e74ebbbe9cc', N'Estudiante', 500.0000, N'a290c15f-9db0-4c6e-8928-066b163f557c')
INSERT [dbo].[TipoBoleto] ([IdTipoBoleto], [Tipo], [Precio], [IdCategoria]) VALUES (N'37c69f17-0872-42eb-83a5-7201311d066c', N'Estudiante', 250.0000, N'e8f3c9f9-faab-4bb2-ae7f-e4eb5f4db7e2')
INSERT [dbo].[TipoBoleto] ([IdTipoBoleto], [Tipo], [Precio], [IdCategoria]) VALUES (N'34b5952d-ff19-434f-9cbb-a12b3d976adf', N'Adulto', 1500.0000, N'00633439-2264-42ac-9a4c-68a676869166')
INSERT [dbo].[TipoBoleto] ([IdTipoBoleto], [Tipo], [Precio], [IdCategoria]) VALUES (N'e4e5cc7e-68ad-4029-9c67-a631d1077dd2', N'Estudiante', 750.0000, N'00633439-2264-42ac-9a4c-68a676869166')
INSERT [dbo].[TipoBoleto] ([IdTipoBoleto], [Tipo], [Precio], [IdCategoria]) VALUES (N'581263ef-d5fc-44d3-9e46-cc9255aa5417', N'Adulto', 1000.0000, N'a290c15f-9db0-4c6e-8928-066b163f557c')
/****** Object:  View [dbo].[CategoriaTipoBoletoView]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[CategoriaTipoBoletoView]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[CategoriaTipoBoletoView] as
Select Categoria.IdCategoria,Categoria.Nombre, Categoria.Costo as CostoCategoria,TipoBoleto.IdTipoBoleto,TipoBoleto.Tipo as TipoBoleto, TipoBoleto.Precio
FROM Categoria
INNER JOIN TipoBoleto ON Categoria.IdCategoria = TipoBoleto.IdCategoria;
'
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Hotel](
	[IdHotel] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IdHabitacion] [uniqueidentifier] NULL,
	[MontoTotal]  AS ([dbo].[TotalHotel]([IdHabitacion])),
PRIMARY KEY CLUSTERED 
(
	[IdHotel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Hotel] ([IdHotel], [Nombre], [IdHabitacion]) VALUES (N'136a7a8c-5248-41c3-adaa-06870498758b', N'Fiesta Americana Reforma', N'd4738416-2168-495a-a3f5-2423ca148b63')
INSERT [dbo].[Hotel] ([IdHotel], [Nombre], [IdHabitacion]) VALUES (N'e418f418-9098-44fc-9cb2-8bb0cbe4cb80', N'Live Aqua Urban Resort Mexico', N'ba16186b-90d2-4b87-8e5f-ade8bfcbfcf3')
/****** Object:  Table [dbo].[Ruta]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ruta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ruta](
	[IdRuta] [uniqueidentifier] NOT NULL,
	[PrecioBase] [money] NULL,
	[CiudadOrigen] [uniqueidentifier] NULL,
	[CiudadDestino] [uniqueidentifier] NULL,
	[IdDetalleRuta] [uniqueidentifier] NULL,
	[IdTransporte] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Ruta] PRIMARY KEY CLUSTERED 
(
	[IdRuta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Ruta] ([IdRuta], [PrecioBase], [CiudadOrigen], [CiudadDestino], [IdDetalleRuta], [IdTransporte]) VALUES (N'008c5b37-9c78-42f2-befa-443aaa14e1c5', 100.0000, N'cc04b08c-9e70-4341-967c-206c7c3de8db', N'2e6c7275-1267-48e3-9230-a180a0aa0d39', N'3bdfa013-5179-4e17-925a-ee7d08bdff80', N'c58f58fe-1c7e-4608-99d3-b47f0daa08e5')
INSERT [dbo].[Ruta] ([IdRuta], [PrecioBase], [CiudadOrigen], [CiudadDestino], [IdDetalleRuta], [IdTransporte]) VALUES (N'28b7ea70-b9d7-4602-9122-a39065856840', 150.0000, N'01e863bc-0933-43b5-87f0-9c7e52ffebb7', N'cc04b08c-9e70-4341-967c-206c7c3de8db', N'739cde28-7ac6-406f-9fe8-657a166b3499', N'75a2b1fc-18ca-4a9c-b35c-fb2b087dd17e')
INSERT [dbo].[Ruta] ([IdRuta], [PrecioBase], [CiudadOrigen], [CiudadDestino], [IdDetalleRuta], [IdTransporte]) VALUES (N'fab02a7a-9525-4720-b45b-cb9beec8eabd', 120.0000, N'fb5098ca-a1e6-46bd-ad19-87c56660cc63', N'01e863bc-0933-43b5-87f0-9c7e52ffebb7', N'410909e0-01b7-461a-9b64-21f08c139d89', N'5ee1ffa5-f061-42a5-a9e3-8f920594f259')
INSERT [dbo].[Ruta] ([IdRuta], [PrecioBase], [CiudadOrigen], [CiudadDestino], [IdDetalleRuta], [IdTransporte]) VALUES (N'40c3389f-f617-4352-a253-d1f07ff0cd0f', 140.0000, N'01e863bc-0933-43b5-87f0-9c7e52ffebb7', N'fb5098ca-a1e6-46bd-ad19-87c56660cc63', N'e390b68d-fd04-488d-8ce0-97a3ba8d68ec', N'5ee1ffa5-f061-42a5-a9e3-8f920594f259')
/****** Object:  UserDefinedFunction [dbo].[TotalBoleto]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TotalBoleto]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create function [dbo].[TotalBoleto]
(@ID uniqueidentifier
,@ID2 uniqueidentifier)
returns Money
begin
return
(Select CostoCategoria + Precio + Ruta.PrecioBase
From CategoriaTipoBoletoView,Ruta
Where @ID = CategoriaTipoBoletoView.IdTipoBoleto AND @ID2 = Ruta.IdRuta)
end;
' 
END
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Boleto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Boleto](
	[IdBoleto] [uniqueidentifier] NOT NULL,
	[IdRuta] [uniqueidentifier] NULL,
	[IdTipoBoleto] [uniqueidentifier] NULL,
	[PrecioTotal]  AS ([dbo].[TotalBoleto]([IdTipoBoleto],[IdRuta])),
PRIMARY KEY CLUSTERED 
(
	[IdBoleto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Boleto] ([IdBoleto], [IdRuta], [IdTipoBoleto]) VALUES (N'a425859a-c3ed-4916-84d6-345d0dcfa25d', N'28b7ea70-b9d7-4602-9122-a39065856840', N'e4e5cc7e-68ad-4029-9c67-a631d1077dd2')
INSERT [dbo].[Boleto] ([IdBoleto], [IdRuta], [IdTipoBoleto]) VALUES (N'4d8052f4-1088-4b2b-8a58-4af9f6c60fd3', N'40c3389f-f617-4352-a253-d1f07ff0cd0f', N'34b5952d-ff19-434f-9cbb-a12b3d976adf')
INSERT [dbo].[Boleto] ([IdBoleto], [IdRuta], [IdTipoBoleto]) VALUES (N'4607cddf-fdb5-4304-be5d-db45135bd5e2', N'008c5b37-9c78-42f2-befa-443aaa14e1c5', N'581263ef-d5fc-44d3-9e46-cc9255aa5417')
INSERT [dbo].[Boleto] ([IdBoleto], [IdRuta], [IdTipoBoleto]) VALUES (N'4be557f2-dbaa-4a4e-b026-f52d6046a0a7', N'008c5b37-9c78-42f2-befa-443aaa14e1c5', N'37c69f17-0872-42eb-83a5-7201311d066c')
/****** Object:  UserDefinedFunction [dbo].[TotalDetalleVenta]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TotalDetalleVenta]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create function [dbo].[TotalDetalleVenta]
(@ID uniqueidentifier
,@ID2 uniqueidentifier
)
returns Money
begin
return
(Select Boleto.PrecioTotal + Hotel.MontoTotal
From Boleto,Hotel
Where Boleto.IdBoleto = @ID AND Hotel.IdHotel = @ID2
)
end;' 
END
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleVenta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DetalleVenta](
	[IdDetalleVenta] [uniqueidentifier] NOT NULL,
	[IdHotel] [uniqueidentifier] NULL,
	[IdBoleto] [uniqueidentifier] NULL,
	[MontoFinal]  AS ([dbo].[TotalDetalleVenta]([IdBoleto],[IdHotel])),
PRIMARY KEY CLUSTERED 
(
	[IdDetalleVenta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[DetalleVenta] ([IdDetalleVenta], [IdHotel], [IdBoleto]) VALUES (N'956fc8c7-38f8-4cf4-9cc0-3a842b51643c', N'136a7a8c-5248-41c3-adaa-06870498758b', N'a425859a-c3ed-4916-84d6-345d0dcfa25d')
INSERT [dbo].[DetalleVenta] ([IdDetalleVenta], [IdHotel], [IdBoleto]) VALUES (N'cf620150-2822-4599-a52a-bff6352d96f2', N'e418f418-9098-44fc-9cb2-8bb0cbe4cb80', N'4d8052f4-1088-4b2b-8a58-4af9f6c60fd3')
/****** Object:  Table [dbo].[Venta]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Venta](
	[IdVenta] [uniqueidentifier] NOT NULL,
	[Fecha] [date] NULL,
	[Hora] [time](7) NULL,
	[Total] [money] NULL,
	[IdDetalleVenta] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Venta] ([IdVenta], [Fecha], [Hora], [Total], [IdDetalleVenta]) VALUES (N'911b5ea4-65cb-467e-aa0a-8bcd67c1844f', CAST(0x473E0B00 AS Date), CAST(0x0700D4F3B7250000 AS Time), 2000.0000, N'cf620150-2822-4599-a52a-bff6352d96f2')
INSERT [dbo].[Venta] ([IdVenta], [Fecha], [Hora], [Total], [IdDetalleVenta]) VALUES (N'91f3be9b-d00f-4649-92de-a8bb897b99e8', CAST(0xC93D0B00 AS Date), CAST(0x070068C461080000 AS Time), 3000.0000, N'956fc8c7-38f8-4cf4-9cc0-3a842b51643c')
/****** Object:  UserDefinedFunction [dbo].[TotalPago]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TotalPago]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create function [dbo].[TotalPago]
(@ID uniqueidentifier)
returns Money
begin
return
(Select Venta.Total - Pago.Monto
From Venta, Pago
Where Venta.IdVenta = @ID and Pago.IdVenta = @ID)
end;' 
END
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pago](
	[IdPagos] [uniqueidentifier] NOT NULL,
	[IdVenta] [uniqueidentifier] NULL,
	[Fecha] [date] NULL,
	[TipoDePago] [varchar](50) NULL,
	[Monto] [money] NULL,
	[Saldo]  AS ([dbo].[TotalPago]([IdVenta])),
 CONSTRAINT [PK__Pago__04137C5B59063A47] PRIMARY KEY CLUSTERED 
(
	[IdPagos] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Pago] ([IdPagos], [IdVenta], [Fecha], [TipoDePago], [Monto]) VALUES (N'444ada30-7ba7-4d6e-9118-26a5aadbfe2f', N'911b5ea4-65cb-467e-aa0a-8bcd67c1844f', CAST(0xCA3D0B00 AS Date), N'Efectivo', 2000.0000)
INSERT [dbo].[Pago] ([IdPagos], [IdVenta], [Fecha], [TipoDePago], [Monto]) VALUES (N'be383ebb-d009-47bc-a930-727266ad8112', N'91f3be9b-d00f-4649-92de-a8bb897b99e8', CAST(0x663E0B00 AS Date), N'Efectivo', 3000.0000)
/****** Object:  Table [dbo].[Paquete]    Script Date: 11/07/2017 23:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paquete]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Paquete](
	[IdPaquete] [uniqueidentifier] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdCliente] [uniqueidentifier] NULL,
	[IdVenta] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Paquete] PRIMARY KEY CLUSTERED 
(
	[IdPaquete] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Paquete] ([IdPaquete], [Descripcion], [IdCliente], [IdVenta]) VALUES (N'c037d3bf-8df9-4f32-8817-0fc8ecde84b9', N'Promocion', N'b4852062-990c-444a-b0f9-0058650eb23f', N'91f3be9b-d00f-4649-92de-a8bb897b99e8')
INSERT [dbo].[Paquete] ([IdPaquete], [Descripcion], [IdCliente], [IdVenta]) VALUES (N'c53efe99-1f45-424a-8a13-42a603632789', N'El mejor combo', N'7449a54a-a575-45c4-b661-7042dc3175ee', N'911b5ea4-65cb-467e-aa0a-8bcd67c1844f')
/****** Object:  ForeignKey [FK_Transporte_Compañia]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transporte_Compañia]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transporte]'))
ALTER TABLE [dbo].[Transporte]  WITH CHECK ADD  CONSTRAINT [FK_Transporte_Compañia] FOREIGN KEY([IdCompañia])
REFERENCES [dbo].[Compañia] ([IdCompañia])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transporte_Compañia]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transporte]'))
ALTER TABLE [dbo].[Transporte] CHECK CONSTRAINT [FK_Transporte_Compañia]
GO
/****** Object:  ForeignKey [FK_TipoBoleto_Categoria]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TipoBoleto_Categoria]') AND parent_object_id = OBJECT_ID(N'[dbo].[TipoBoleto]'))
ALTER TABLE [dbo].[TipoBoleto]  WITH CHECK ADD  CONSTRAINT [FK_TipoBoleto_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TipoBoleto_Categoria]') AND parent_object_id = OBJECT_ID(N'[dbo].[TipoBoleto]'))
ALTER TABLE [dbo].[TipoBoleto] CHECK CONSTRAINT [FK_TipoBoleto_Categoria]
GO
/****** Object:  ForeignKey [FK_Hotel_Habitacion]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel]'))
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Habitacion] FOREIGN KEY([IdHabitacion])
REFERENCES [dbo].[Habitacion] ([IdHabitacion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Hotel_Habitacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[Hotel]'))
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_Hotel_Habitacion]
GO
/****** Object:  ForeignKey [FK_Ruta_Ciudad]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Ciudad] FOREIGN KEY([CiudadOrigen])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Ciudad]
GO
/****** Object:  ForeignKey [FK_Ruta_Ciudad1]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Ciudad1] FOREIGN KEY([CiudadDestino])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Ciudad1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Ciudad1]
GO
/****** Object:  ForeignKey [FK_Ruta_DetalleRuta]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_DetalleRuta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_DetalleRuta] FOREIGN KEY([IdDetalleRuta])
REFERENCES [dbo].[DetalleRuta] ([IdDetalleRuta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_DetalleRuta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_DetalleRuta]
GO
/****** Object:  ForeignKey [FK_Ruta_Transporte]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Transporte]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Transporte] FOREIGN KEY([IdTransporte])
REFERENCES [dbo].[Transporte] ([IdTransporte])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ruta_Transporte]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ruta]'))
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Transporte]
GO
/****** Object:  ForeignKey [FK_Boleto_Ruta]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_Ruta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_Ruta] FOREIGN KEY([IdRuta])
REFERENCES [dbo].[Ruta] ([IdRuta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_Ruta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_Ruta]
GO
/****** Object:  ForeignKey [FK_Boleto_TipoBoleto]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_TipoBoleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_TipoBoleto] FOREIGN KEY([IdTipoBoleto])
REFERENCES [dbo].[TipoBoleto] ([IdTipoBoleto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Boleto_TipoBoleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Boleto]'))
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_TipoBoleto]
GO
/****** Object:  ForeignKey [FK_DetalleVenta_Boleto]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVenta_Boleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVenta]'))
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Boleto] FOREIGN KEY([IdBoleto])
REFERENCES [dbo].[Boleto] ([IdBoleto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVenta_Boleto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVenta]'))
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Boleto]
GO
/****** Object:  ForeignKey [FK_DetalleVenta_Hotel]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVenta_Hotel]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVenta]'))
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Hotel] FOREIGN KEY([IdHotel])
REFERENCES [dbo].[Hotel] ([IdHotel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVenta_Hotel]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVenta]'))
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Hotel]
GO
/****** Object:  ForeignKey [FK_Venta_DetalleVenta]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_DetalleVenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_DetalleVenta] FOREIGN KEY([IdDetalleVenta])
REFERENCES [dbo].[DetalleVenta] ([IdDetalleVenta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Venta_DetalleVenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venta]'))
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_DetalleVenta]
GO
/****** Object:  ForeignKey [FK_Pago_Venta]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pago_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pago]'))
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Venta] FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Venta] ([IdVenta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pago_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pago]'))
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_Venta]
GO
/****** Object:  ForeignKey [FK_Paquete_Cliente]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Cliente]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Cliente]
GO
/****** Object:  ForeignKey [FK_Paquete_Venta]    Script Date: 11/07/2017 23:27:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Venta] FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Venta] ([IdVenta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Venta]
GO
