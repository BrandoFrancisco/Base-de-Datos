USE [master]
GO
/****** Object:  Database [BaseDeDatos]    Script Date: 09/21/2017 22:23:30 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'BaseDeDatos')

ALTER DATABASE [BaseDeDatos] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BaseDeDatos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BaseDeDatos] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BaseDeDatos] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BaseDeDatos] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BaseDeDatos] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BaseDeDatos] SET ARITHABORT OFF
GO
ALTER DATABASE [BaseDeDatos] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BaseDeDatos] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BaseDeDatos] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BaseDeDatos] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BaseDeDatos] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BaseDeDatos] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BaseDeDatos] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BaseDeDatos] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BaseDeDatos] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BaseDeDatos] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BaseDeDatos] SET  DISABLE_BROKER
GO
ALTER DATABASE [BaseDeDatos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BaseDeDatos] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BaseDeDatos] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BaseDeDatos] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BaseDeDatos] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BaseDeDatos] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BaseDeDatos] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BaseDeDatos] SET  READ_WRITE
GO
ALTER DATABASE [BaseDeDatos] SET RECOVERY FULL
GO
ALTER DATABASE [BaseDeDatos] SET  MULTI_USER
GO
ALTER DATABASE [BaseDeDatos] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BaseDeDatos] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'BaseDeDatos', N'ON'
GO
USE [BaseDeDatos]
GO
/****** Object:  ForeignKey [FK_Ventas_Empleados]    Script Date: 09/21/2017 22:23:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Empleados]
GO
/****** Object:  ForeignKey [FK_Ventas_EstatusVenta]    Script Date: 09/21/2017 22:23:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_EstatusVenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_EstatusVenta]
GO
/****** Object:  ForeignKey [FK_InventarioAlmacenProductos_Almacenes]    Script Date: 09/21/2017 22:23:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioAlmacenProductos_Almacenes]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioAlmacenProductos]'))
ALTER TABLE [dbo].[InventarioAlmacenProductos] DROP CONSTRAINT [FK_InventarioAlmacenProductos_Almacenes]
GO
/****** Object:  ForeignKey [FK_InventarioAlmacenProductos_Productos]    Script Date: 09/21/2017 22:23:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioAlmacenProductos_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioAlmacenProductos]'))
ALTER TABLE [dbo].[InventarioAlmacenProductos] DROP CONSTRAINT [FK_InventarioAlmacenProductos_Productos]
GO
/****** Object:  ForeignKey [FK_DetalleVentaIAP_InventarioAlmacenProductos]    Script Date: 09/21/2017 22:23:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVentaIAP_InventarioAlmacenProductos]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVentaIAP]'))
ALTER TABLE [dbo].[DetalleVentaIAP] DROP CONSTRAINT [FK_DetalleVentaIAP_InventarioAlmacenProductos]
GO
/****** Object:  ForeignKey [FK_DetalleVentaIAP_Ventas]    Script Date: 09/21/2017 22:23:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVentaIAP_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVentaIAP]'))
ALTER TABLE [dbo].[DetalleVentaIAP] DROP CONSTRAINT [FK_DetalleVentaIAP_Ventas]
GO
/****** Object:  Table [dbo].[DetalleVentaIAP]    Script Date: 09/21/2017 22:23:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVentaIAP_InventarioAlmacenProductos]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVentaIAP]'))
ALTER TABLE [dbo].[DetalleVentaIAP] DROP CONSTRAINT [FK_DetalleVentaIAP_InventarioAlmacenProductos]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVentaIAP_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVentaIAP]'))
ALTER TABLE [dbo].[DetalleVentaIAP] DROP CONSTRAINT [FK_DetalleVentaIAP_Ventas]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleVentaIAP]') AND type in (N'U'))
DROP TABLE [dbo].[DetalleVentaIAP]
GO
/****** Object:  Table [dbo].[InventarioAlmacenProductos]    Script Date: 09/21/2017 22:23:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioAlmacenProductos_Almacenes]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioAlmacenProductos]'))
ALTER TABLE [dbo].[InventarioAlmacenProductos] DROP CONSTRAINT [FK_InventarioAlmacenProductos_Almacenes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioAlmacenProductos_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioAlmacenProductos]'))
ALTER TABLE [dbo].[InventarioAlmacenProductos] DROP CONSTRAINT [FK_InventarioAlmacenProductos_Productos]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InventarioAlmacenProductos]') AND type in (N'U'))
DROP TABLE [dbo].[InventarioAlmacenProductos]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 09/21/2017 22:23:32 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Empleados]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_EstatusVenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_EstatusVenta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ventas]') AND type in (N'U'))
DROP TABLE [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 09/21/2017 22:23:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Almacenes]') AND type in (N'U'))
DROP TABLE [dbo].[Almacenes]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 09/21/2017 22:23:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Productos]') AND type in (N'U'))
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 09/21/2017 22:23:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[EstatusVenta]    Script Date: 09/21/2017 22:23:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EstatusVenta]') AND type in (N'U'))
DROP TABLE [dbo].[EstatusVenta]
GO
/****** Object:  Table [dbo].[EstatusVenta]    Script Date: 09/21/2017 22:23:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EstatusVenta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EstatusVenta](
	[ID_EstatusVenta] [int] NOT NULL,
	[Nombre] [varchar](10) NOT NULL,
 CONSTRAINT [PK_EstatusVenta] PRIMARY KEY CLUSTERED 
(
	[ID_EstatusVenta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 09/21/2017 22:23:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empleados](
	[ID_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](10) NULL,
	[Apellido_Paterno] [varchar](10) NULL,
	[Apellido_Materno] [varchar](10) NULL,
	[Fecha_Ingreso] [date] NULL,
	[Antiguedad] [varchar](10) NULL,
	[Fecha_Nacimiento] [date] NULL,
	[Edad] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON
INSERT [dbo].[Empleados] ([ID_Empleado], [Nombre], [Apellido_Paterno], [Apellido_Materno], [Fecha_Ingreso], [Antiguedad], [Fecha_Nacimiento], [Edad]) VALUES (1, N'Jose', N'daaaa', N'dsads', CAST(0xC1210B00 AS Date), NULL, CAST(0xC1210B00 AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Empleados] OFF
/****** Object:  Table [dbo].[Productos]    Script Date: 09/21/2017 22:23:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Productos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Productos](
	[ID_Productos] [int] NOT NULL,
	[CodigoBarras] [varchar](50) NOT NULL,
	[Nombre] [varchar](10) NOT NULL,
	[PrecioBase] [int] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ID_Productos] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 09/21/2017 22:23:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Almacenes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Almacenes](
	[IDAlmacenes] [int] NOT NULL,
	[Nombre] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Almacenes] PRIMARY KEY CLUSTERED 
(
	[IDAlmacenes] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 09/21/2017 22:23:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ventas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ventas](
	[ID_Ventas] [int] NOT NULL,
	[ID_EmpleadoVentas] [int] NOT NULL,
	[ID_Estatus] [int] NOT NULL,
	[Folio] [varchar](50) NOT NULL,
	[Subtotal] [money] NOT NULL,
	[IVA] [money] NOT NULL,
	[Total] [money] NOT NULL,
	[FechaHora] [datetime] NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[ID_Ventas] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventarioAlmacenProductos]    Script Date: 09/21/2017 22:23:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InventarioAlmacenProductos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InventarioAlmacenProductos](
	[ID_InventarioAlmacen] [int] NOT NULL,
	[IDAlmacen] [int] NOT NULL,
	[IDProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_InventarioAlmacenProductos] PRIMARY KEY CLUSTERED 
(
	[ID_InventarioAlmacen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DetalleVentaIAP]    Script Date: 09/21/2017 22:23:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleVentaIAP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DetalleVentaIAP](
	[IDDetalleVenta] [int] NOT NULL,
	[IDVenta] [int] NOT NULL,
	[ID_IAP] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[Subtotal] [money] NOT NULL,
 CONSTRAINT [PK_DetalleVentaIAP] PRIMARY KEY CLUSTERED 
(
	[IDDetalleVenta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  ForeignKey [FK_Ventas_Empleados]    Script Date: 09/21/2017 22:23:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Empleados] FOREIGN KEY([ID_EmpleadoVentas])
REFERENCES [dbo].[Empleados] ([ID_Empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_Empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Empleados]
GO
/****** Object:  ForeignKey [FK_Ventas_EstatusVenta]    Script Date: 09/21/2017 22:23:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_EstatusVenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_EstatusVenta] FOREIGN KEY([ID_Estatus])
REFERENCES [dbo].[EstatusVenta] ([ID_EstatusVenta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ventas_EstatusVenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ventas]'))
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_EstatusVenta]
GO
/****** Object:  ForeignKey [FK_InventarioAlmacenProductos_Almacenes]    Script Date: 09/21/2017 22:23:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioAlmacenProductos_Almacenes]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioAlmacenProductos]'))
ALTER TABLE [dbo].[InventarioAlmacenProductos]  WITH CHECK ADD  CONSTRAINT [FK_InventarioAlmacenProductos_Almacenes] FOREIGN KEY([IDAlmacen])
REFERENCES [dbo].[Almacenes] ([IDAlmacenes])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioAlmacenProductos_Almacenes]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioAlmacenProductos]'))
ALTER TABLE [dbo].[InventarioAlmacenProductos] CHECK CONSTRAINT [FK_InventarioAlmacenProductos_Almacenes]
GO
/****** Object:  ForeignKey [FK_InventarioAlmacenProductos_Productos]    Script Date: 09/21/2017 22:23:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioAlmacenProductos_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioAlmacenProductos]'))
ALTER TABLE [dbo].[InventarioAlmacenProductos]  WITH CHECK ADD  CONSTRAINT [FK_InventarioAlmacenProductos_Productos] FOREIGN KEY([IDProducto])
REFERENCES [dbo].[Productos] ([ID_Productos])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventarioAlmacenProductos_Productos]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventarioAlmacenProductos]'))
ALTER TABLE [dbo].[InventarioAlmacenProductos] CHECK CONSTRAINT [FK_InventarioAlmacenProductos_Productos]
GO
/****** Object:  ForeignKey [FK_DetalleVentaIAP_InventarioAlmacenProductos]    Script Date: 09/21/2017 22:23:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVentaIAP_InventarioAlmacenProductos]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVentaIAP]'))
ALTER TABLE [dbo].[DetalleVentaIAP]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVentaIAP_InventarioAlmacenProductos] FOREIGN KEY([ID_IAP])
REFERENCES [dbo].[InventarioAlmacenProductos] ([ID_InventarioAlmacen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVentaIAP_InventarioAlmacenProductos]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVentaIAP]'))
ALTER TABLE [dbo].[DetalleVentaIAP] CHECK CONSTRAINT [FK_DetalleVentaIAP_InventarioAlmacenProductos]
GO
/****** Object:  ForeignKey [FK_DetalleVentaIAP_Ventas]    Script Date: 09/21/2017 22:23:32 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVentaIAP_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVentaIAP]'))
ALTER TABLE [dbo].[DetalleVentaIAP]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVentaIAP_Ventas] FOREIGN KEY([IDVenta])
REFERENCES [dbo].[Ventas] ([ID_Ventas])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetalleVentaIAP_Ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetalleVentaIAP]'))
ALTER TABLE [dbo].[DetalleVentaIAP] CHECK CONSTRAINT [FK_DetalleVentaIAP_Ventas]
GO
