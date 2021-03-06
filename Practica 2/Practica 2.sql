USE [master]
GO
/****** Object:  Database [Cinemax]    Script Date: 09/11/2017 02:54:34 ******/
CREATE DATABASE [Cinemax]

GO
ALTER DATABASE [Cinemax] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cinemax].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cinemax] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Cinemax] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Cinemax] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Cinemax] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Cinemax] SET ARITHABORT OFF
GO
ALTER DATABASE [Cinemax] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Cinemax] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Cinemax] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Cinemax] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Cinemax] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Cinemax] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Cinemax] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Cinemax] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Cinemax] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Cinemax] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Cinemax] SET  DISABLE_BROKER
GO
ALTER DATABASE [Cinemax] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Cinemax] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Cinemax] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Cinemax] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Cinemax] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Cinemax] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Cinemax] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Cinemax] SET  READ_WRITE
GO
ALTER DATABASE [Cinemax] SET RECOVERY FULL
GO
ALTER DATABASE [Cinemax] SET  MULTI_USER
GO
ALTER DATABASE [Cinemax] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Cinemax] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Cinemax', N'ON'
GO
USE [Cinemax]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 09/11/2017 02:54:35 ******/
DROP TABLE [dbo].[Boleto]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 09/11/2017 02:54:35 ******/
DROP TABLE [dbo].[Categoria]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 09/11/2017 02:54:35 ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 09/11/2017 02:54:35 ******/
DROP TABLE [dbo].[Pelicula]
GO
/****** Object:  Table [dbo].[Salas]    Script Date: 09/11/2017 02:54:35 ******/
DROP TABLE [dbo].[Salas]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 09/11/2017 02:54:35 ******/
DROP TABLE [dbo].[Sucursal]
GO
/****** Object:  Table [dbo].[Venta_Boletos]    Script Date: 09/11/2017 02:54:35 ******/
DROP TABLE [dbo].[Venta_Boletos]
GO
/****** Object:  Table [dbo].[Venta_Boletos]    Script Date: 09/11/2017 02:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venta_Boletos](
	[ID_Boleto] [int] NOT NULL,
	[Boleto] [varchar](10) NULL,
	[Cant_Boletos] [int] NULL,
	[Boletos_Vendidos] [int] NULL,
	[Boletos_Disponibles]  AS ([Cant_Boletos]-[Boletos_Vendidos]),
PRIMARY KEY CLUSTERED 
(
	[ID_Boleto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 09/11/2017 02:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[ID_Sucursal] [int] NOT NULL,
	[Sucursal] [varchar](10) NULL,
	[Direccion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Sucursal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Salas]    Script Date: 09/11/2017 02:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Salas](
	[ID_Sala] [int] NOT NULL,
	[Sala] [varchar](10) NULL,
	[Tipo_Sala] [varchar](10) NULL,
	[Capacidad] [int] NULL,
	[Asientos_Ocupados] [int] NULL,
	[Asientos_Disponibles]  AS ([Capacidad]-[Asientos_Ocupados]),
PRIMARY KEY CLUSTERED 
(
	[ID_Sala] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 09/11/2017 02:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pelicula](
	[ID_Pelicula] [int] NOT NULL,
	[Pelicula] [varchar](20) NOT NULL,
	[Descripcion] [varchar](30) NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[ID_Pelicula] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 09/11/2017 02:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[ID_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](10) NULL,
	[Apellido_Paterno] [varchar](10) NULL,
	[Apellido_Materno] [varchar](10) NULL,
	[Fecha_Ingreso] [date] NULL,
	[Antiguedad]  AS (datediff(year,[Fecha_Ingreso],getdate())),
	[Fecha_Nacimiento] [date] NULL,
	[Edad]  AS (datediff(year,[Fecha_Nacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [ÍNDICE] ON [dbo].[Empleado] 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 09/11/2017 02:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[ID_Categoria] [uniqueidentifier] NOT NULL,
	[Categoria] [varchar](10) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[ID_Categoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 09/11/2017 02:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Boleto](
	[ID_Boleto] [int] NOT NULL,
	[Tipo_Boleto] [varchar](20) NOT NULL,
	[Precio] [int] NULL,
 CONSTRAINT [PK_Boleto] PRIMARY KEY CLUSTERED 
(
	[ID_Boleto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
