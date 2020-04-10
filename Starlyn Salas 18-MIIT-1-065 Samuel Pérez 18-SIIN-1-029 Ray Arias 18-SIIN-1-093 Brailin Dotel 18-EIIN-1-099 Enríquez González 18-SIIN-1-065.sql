 /***** Nombre: Starlyn Salas Antonio Carrion Matricula:18-MIIT-1-065 Seccion: 0541 *****/
/***** Nombre: Carlos Samuel Pérez  Matricula: 18-SIIN-1-029 Seccion: 0541 *****/
/***** Nombre: Ray Francis Arias Perdomo Matricula: 18-SIIN-1-093 Seccion: 0541 *****/
/***** Nombre: Brailin Antonio segura Dote Matricula:18-EIIN-1-099 Seccion: 0541 *****/
/***** Nombre: Miguel Enrique González  Matricula: 18-SIIN-1-065 Seccion: 0541 *****/

USE [master]
GO

/****** Object:  Database [Almacen]    Script Date: 07/04/2020 11:49:53 p. m. ******/
CREATE DATABASE [SBRE]
GO
USE [SBRE]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 07/04/2020 11:49:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb..[dbo].[Categoria]') is not null
 drop table [dbo].[Categoria]
CREATE TABLE [dbo].[Categoria](
[IDCategoria] [varchar](10) NOT NULL,
[DescripCategoria] [varchar](50) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED
(
[IDCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 07/04/2020 11:49:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb..[dbo].[Cliente]') is not null
 drop table [dbo].[Cliente]
CREATE TABLE [dbo].[Cliente](
[IDcliente] [char](5) NOT NULL,
[Nombre] [varchar](10) NULL,
[Apellido] [varchar](50) NULL,
[Telefono] [varchar](20) NULL,
[Direccion] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED
(
[IDcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 07/04/2020 11:49:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb..[dbo].[Departamento]') is not null
 drop table [dbo].[Departamento]
CREATE TABLE [dbo].[Departamento](
[Departamentoid] [char](10) NOT NULL,
[Nombredept] [char](10) NULL,
[IDEmpleado] [char](5) NULL,
[IDproducto] [char](10) NULL,
[Apellidoemp] [char](50) NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED
(
[Departamentoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle]    Script Date: 07/04/2020 11:49:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb..[dbo].[Detalle]') is not null
 drop table [dbo].[Detalle]
CREATE TABLE [dbo].[Detalle](
[Numfact] [int] NULL,
[IDproducto] [char](10) NULL,
[Cantidad] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle1]    Script Date: 07/04/2020 11:49:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb..[dbo].[Detalle1]') is not null
 drop table [dbo].[Detalle1]
CREATE TABLE [dbo].[Detalle1](
[Numfact] [int] NULL,
[IDproducto] [char](10) NULL,
[Cantidad] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 07/04/2020 11:49:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb..[dbo].[Empleado]') is not null
 drop table [dbo].[Empleado]
CREATE TABLE [dbo].[Empleado](
[IDEmpleado] [char](5) NOT NULL,
[Nombreemp] [char](50) NULL,
[Apellidoemp] [char](50) NULL,
[Departamentoempl] [varchar](50) NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED
(
[IDEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 07/04/2020 11:49:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb..[dbo].[Factura]') is not null
 drop table [dbo].[Factura]
CREATE TABLE [dbo].[Factura](
[Numfact] [int] NOT NULL,
[Fecha] [smalldatetime] NULL,
[Total] [numeric](18, 0) NULL,
[IDcliente] [char](5) NULL,
[IDEmpleado] [char](5) NULL,
[Departamentoid] [char](10) NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED
(
[Numfact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 07/04/2020 11:49:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb..[dbo].[Producto]') is not null
 drop table [dbo].[Producto]
 CREATE TABLE [dbo].[Producto](
[IDproducto] [char](10) NOT NULL,
[Nombreprodct] [char](10) NULL,
[precioproduct] [numeric](18, 0) NULL,
[Nombredept] [char](10) NULL,
[IDCategoria] [varchar](10) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED
(
[IDproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categoria] ([IDCategoria], [DescripCategoria]) VALUES (N'001 ', N'I                                                 ')
INSERT [dbo].[Categoria] ([IDCategoria], [DescripCategoria]) VALUES (N'002 ', N'II                                                ')
INSERT [dbo].[Categoria] ([IDCategoria], [DescripCategoria]) VALUES (N'003 ', N'III                                               ')
INSERT [dbo].[Categoria] ([IDCategoria], [DescripCategoria]) VALUES (N'004 ', N'IV                                                ')
INSERT [dbo].[Categoria] ([IDCategoria], [DescripCategoria]) VALUES (N'005 ', N'V                                                 ')
INSERT [dbo].[Categoria] ([IDCategoria], [DescripCategoria]) VALUES (N'006 ', N'VI                                                ')
INSERT [dbo].[Categoria] ([IDCategoria], [DescripCategoria]) VALUES (N'007 ', N'VII                                               ')
INSERT [dbo].[Categoria] ([IDCategoria], [DescripCategoria]) VALUES (N'008 ', N'VIII                                              ')
INSERT [dbo].[Categoria] ([IDCategoria], [DescripCategoria]) VALUES (N'009 ', N'IX                                                ')
INSERT [dbo].[Categoria] ([IDCategoria], [DescripCategoria]) VALUES (N'010 ', N'X                                                 ')
INSERT [dbo].[Cliente] ([IDcliente], [Nombre], [Apellido], [Telefono], [Direccion]) VALUES (N'001  ', N'Ramon', N'Salas', N'829-505-6860', N'CALLE AGUSTIN LARA NO. 69-B')
INSERT [dbo].[Cliente] ([IDcliente], [Nombre], [Apellido], [Telefono], [Direccion]) VALUES (N'002  ', N'Rosa', N'Perez', N'809-575-9862', N'AV. INDEPENDENCIA NO. 241')
INSERT [dbo].[Cliente] ([IDcliente], [Nombre], [Apellido], [Telefono], [Direccion]) VALUES (N'003  ', N'Amelia', N'Carrion', N'829-574-5682', N'AV. INDEPENDENCIA NO. 779')
INSERT [dbo].[Cliente] ([IDcliente], [Nombre], [Apellido], [Telefono], [Direccion]) VALUES (N'004  ', N'Sierra', N'Alcantara', N'849-52-0297', N'AV. 20 DE NOVIEMBRE NO.1024')
INSERT [dbo].[Cliente] ([IDcliente], [Nombre], [Apellido], [Telefono], [Direccion]) VALUES (N'005  ', N'Tamika', N'Rosario', N'809-587-0687', N' AV. 5 DE MAYO NO. 1108')
INSERT [dbo].[Cliente] ([IDcliente], [Nombre], [Apellido], [Telefono], [Direccion]) VALUES (N'006  ', N'Tonya', N'Mendoza', N'809-854-6582', N'AV. 20 DE NOV. NO. 881 ESQ. ALDAMA')
INSERT [dbo].[Cliente] ([IDcliente], [Nombre], [Apellido], [Telefono], [Direccion]) VALUES (N'007  ', N'Tamara', N'Selma', N'809-524-5248', N' AV. 20 DE NOVIEMBRE NO 1320')
INSERT [dbo].[Cliente] ([IDcliente], [Nombre], [Apellido], [Telefono], [Direccion]) VALUES (N'008  ', N'Laquisha', N'Mojica', N'809-587-9685', N' AV.INDEPENDENCIA NO. 678')
INSERT [dbo].[Cliente] ([IDcliente], [Nombre], [Apellido], [Telefono], [Direccion]) VALUES (N'009  ', N'Teresa', N'Jhonson', N'829-854-8574', N' CALLE RIVA PALACIOS NO. 465')
INSERT [dbo].[Cliente] ([IDcliente], [Nombre], [Apellido], [Telefono], [Direccion]) VALUES (N'010  ', N'Hannah', N'Sorentino', N'809-854-7485', N'5 DE MAYO 1038')
INSERT [dbo].[Departamento] ([Departamentoid], [Nombredept], [IDEmpleado], [IDproducto], [Apellidoemp]) VALUES (N'001       ', N'Bebidas   ', N'001  ', N'001       ', N'Nuñes                                             ')
INSERT [dbo].[Departamento] ([Departamentoid], [Nombredept], [IDEmpleado], [IDproducto], [Apellidoemp]) VALUES (N'002       ', N'Comida    ', N'002  ', N'002       ', N'Ramon                                             ')
INSERT [dbo].[Departamento] ([Departamentoid], [Nombredept], [IDEmpleado], [IDproducto], [Apellidoemp]) VALUES (N'003       ', N'Electronic', N'003  ', N'003       ', N'Salas                                             ')
INSERT [dbo].[Departamento] ([Departamentoid], [Nombredept], [IDEmpleado], [IDproducto], [Apellidoemp]) VALUES (N'004       ', N'Farmac    ', N'004  ', N'004       ', N'Alcantara                                         ')
INSERT [dbo].[Departamento] ([Departamentoid], [Nombredept], [IDEmpleado], [IDproducto], [Apellidoemp]) VALUES (N'005       ', N'Casa      ', N'005  ', N'005       ', N'Petit                                             ')
INSERT [dbo].[Departamento] ([Departamentoid], [Nombredept], [IDEmpleado], [IDproducto], [Apellidoemp]) VALUES (N'006       ', N'Mueble    ', N'006  ', N'006       ', N'Mojica                                            ')
INSERT [dbo].[Departamento] ([Departamentoid], [Nombredept], [IDEmpleado], [IDproducto], [Apellidoemp]) VALUES (N'007       ', N'Ferrete   ', N'007  ', N'007       ', N'Carrion                                           ')
INSERT [dbo].[Departamento] ([Departamentoid], [Nombredept], [IDEmpleado], [IDproducto], [Apellidoemp]) VALUES (N'008       ', N'Dulces    ', N'008  ', N'008       ', N'Uceta                                             ')
INSERT [dbo].[Departamento] ([Departamentoid], [Nombredept], [IDEmpleado], [IDproducto], [Apellidoemp]) VALUES (N'009       ', N'Potres    ', N'009  ', N'009       ', N'Caceres                                           ')
INSERT [dbo].[Departamento] ([Departamentoid], [Nombredept], [IDEmpleado], [IDproducto], [Apellidoemp]) VALUES (N'010       ', N'Ropa      ', N'010  ', N'010       ', N'Mendes                                            ')
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (1, N'001       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (2, N'002       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (3, N'003       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (4, N'004       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (5, N'005       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (6, N'006       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (7, N'007       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (8, N'008       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (9, N'009       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (10, N'010       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (1, N'001       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (2, N'002       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (3, N'003       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (4, N'004       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (5, N'005       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (6, N'006       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (7, N'007       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (8, N'008       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (9, N'009       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (10, N'010       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (1, N'001       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (2, N'002       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (3, N'003       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (4, N'004       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (5, N'005       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (6, N'006       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (7, N'007       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (8, N'008       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (9, N'009       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (10, N'010       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (1, N'001       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (2, N'002       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (3, N'003       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (4, N'004       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (5, N'005       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (6, N'006       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (7, N'007       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (8, N'008       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (9, N'009       ', 1)
INSERT [dbo].[Detalle] ([Numfact], [IDproducto], [Cantidad]) VALUES (10, N'010       ', 1)
INSERT [dbo].[Empleado] ([IDEmpleado], [Nombreemp], [Apellidoemp], [Departamentoempl]) VALUES (N'001  ', N'Ramon                                             ', N'Nuñes                                             ', N'Bebidas')
INSERT [dbo].[Empleado] ([IDEmpleado], [Nombreemp], [Apellidoemp], [Departamentoempl]) VALUES (N'002  ', N'Toño                                              ', N'Ramon                                             ', N'Comida    ')
INSERT [dbo].[Empleado] ([IDEmpleado], [Nombreemp], [Apellidoemp], [Departamentoempl]) VALUES (N'003  ', NULL, N'Salas                                             ', N'Electronic')
INSERT [dbo].[Empleado] ([IDEmpleado], [Nombreemp], [Apellidoemp], [Departamentoempl]) VALUES (N'004  ', NULL, N'Alcantara                                         ', N'Farmac    ')
INSERT [dbo].[Empleado] ([IDEmpleado], [Nombreemp], [Apellidoemp], [Departamentoempl]) VALUES (N'005  ', NULL, N'Petit                                             ', N'Casa      ')
INSERT [dbo].[Empleado] ([IDEmpleado], [Nombreemp], [Apellidoemp], [Departamentoempl]) VALUES (N'006  ', NULL, N'Mojica                                            ', N'Mueble    ')
INSERT [dbo].[Empleado] ([IDEmpleado], [Nombreemp], [Apellidoemp], [Departamentoempl]) VALUES (N'007  ', NULL, N'Carron                                            ', N'Ferrete   ')
INSERT [dbo].[Empleado] ([IDEmpleado], [Nombreemp], [Apellidoemp], [Departamentoempl]) VALUES (N'008  ', NULL, N'Uceta                                             ', N'Dulces    ')
INSERT [dbo].[Empleado] ([IDEmpleado], [Nombreemp], [Apellidoemp], [Departamentoempl]) VALUES (N'009  ', NULL, N'Caceres                                           ', N'Potres    ')
INSERT [dbo].[Empleado] ([IDEmpleado], [Nombreemp], [Apellidoemp], [Departamentoempl]) VALUES (N'010  ', NULL, N'Mendes                                            ', N'Ropa      ')
INSERT [dbo].[Factura] ([Numfact], [Fecha], [Total], [IDcliente], [IDEmpleado], [Departamentoid]) VALUES (1, CAST(N'2020-11-10T12:30:00' AS SmallDateTime), CAST(700 AS Numeric(18, 0)), N'001  ', N'001  ', N'001       ')
INSERT [dbo].[Factura] ([Numfact], [Fecha], [Total], [IDcliente], [IDEmpleado], [Departamentoid]) VALUES (2, CAST(N'2020-11-10T10:00:00' AS SmallDateTime), CAST(200 AS Numeric(18, 0)), N'002  ', N'002  ', N'002       ')
INSERT [dbo].[Factura] ([Numfact], [Fecha], [Total], [IDcliente], [IDEmpleado], [Departamentoid]) VALUES (3, CAST(N'2020-11-10T11:00:00' AS SmallDateTime), CAST(40000 AS Numeric(18, 0)), N'003  ', N'003  ', N'003       ')
INSERT [dbo].[Factura] ([Numfact], [Fecha], [Total], [IDcliente], [IDEmpleado], [Departamentoid]) VALUES (4, CAST(N'2020-11-10T03:00:00' AS SmallDateTime), CAST(15 AS Numeric(18, 0)), N'004  ', N'004  ', N'004       ')
INSERT [dbo].[Factura] ([Numfact], [Fecha], [Total], [IDcliente], [IDEmpleado], [Departamentoid]) VALUES (5, CAST(N'2020-11-10T04:00:00' AS SmallDateTime), CAST(10 AS Numeric(18, 0)), N'005  ', N'005  ', N'005       ')
INSERT [dbo].[Factura] ([Numfact], [Fecha], [Total], [IDcliente], [IDEmpleado], [Departamentoid]) VALUES (6, CAST(N'2020-11-10T05:00:00' AS SmallDateTime), CAST(250 AS Numeric(18, 0)), N'006  ', N'006  ', N'006       ')
INSERT [dbo].[Factura] ([Numfact], [Fecha], [Total], [IDcliente], [IDEmpleado], [Departamentoid]) VALUES (7, CAST(N'2020-11-10T07:00:00' AS SmallDateTime), CAST(300 AS Numeric(18, 0)), N'007  ', N'007  ', N'007       ')
INSERT [dbo].[Factura] ([Numfact], [Fecha], [Total], [IDcliente], [IDEmpleado], [Departamentoid]) VALUES (8, CAST(N'2020-11-10T04:00:00' AS SmallDateTime), CAST(50 AS Numeric(18, 0)), N'008  ', N'008  ', N'008       ')
INSERT [dbo].[Factura] ([Numfact], [Fecha], [Total], [IDcliente], [IDEmpleado], [Departamentoid]) VALUES (9, CAST(N'2020-11-10T08:00:00' AS SmallDateTime), CAST(15 AS Numeric(18, 0)), N'009  ', N'009  ', N'009       ')
INSERT [dbo].[Factura] ([Numfact], [Fecha], [Total], [IDcliente], [IDEmpleado], [Departamentoid]) VALUES (10, CAST(N'2020-11-10T05:00:00' AS SmallDateTime), CAST(700 AS Numeric(18, 0)), N'010  ', N'010  ', N'010       ')
INSERT [dbo].[Producto] ([IDproducto], [Nombreprodct], [precioproduct], [Nombredept], [IDCategoria]) VALUES (N'001       ', N'Romo      ', CAST(700 AS Numeric(18, 0)), N'Bebidas   ', N'001 ')
INSERT [dbo].[Producto] ([IDproducto], [Nombreprodct], [precioproduct], [Nombredept], [IDCategoria]) VALUES (N'002       ', N'Arroz     ', CAST(200 AS Numeric(18, 0)), N'Comida    ', N'002 ')
INSERT [dbo].[Producto] ([IDproducto], [Nombreprodct], [precioproduct], [Nombredept], [IDCategoria]) VALUES (N'003       ', N'TV        ', CAST(40000 AS Numeric(18, 0)), N'Electronic', N'003 ')
INSERT [dbo].[Producto] ([IDproducto], [Nombreprodct], [precioproduct], [Nombredept], [IDCategoria]) VALUES (N'004       ', N'Aspirina  ', CAST(15 AS Numeric(18, 0)), N'Farmac    ', N'004 ')
INSERT [dbo].[Producto] ([IDproducto], [Nombreprodct], [precioproduct], [Nombredept], [IDCategoria]) VALUES (N'005       ', N'Block     ', CAST(10 AS Numeric(18, 0)), N'Casa      ', N'005 ')
INSERT [dbo].[Producto] ([IDproducto], [Nombreprodct], [precioproduct], [Nombredept], [IDCategoria]) VALUES (N'006       ', N'Almohadas ', CAST(250 AS Numeric(18, 0)), N'Mueble    ', N'006 ')
INSERT [dbo].[Producto] ([IDproducto], [Nombreprodct], [precioproduct], [Nombredept], [IDCategoria]) VALUES (N'007       ', N'Martillo  ', CAST(300 AS Numeric(18, 0)), N'Ferrete   ', N'007 ')
INSERT [dbo].[Producto] ([IDproducto], [Nombreprodct], [precioproduct], [Nombredept], [IDCategoria]) VALUES (N'008       ', N'Coco      ', CAST(50 AS Numeric(18, 0)), N'Dulces    ', N'008 ')
INSERT [dbo].[Producto] ([IDproducto], [Nombreprodct], [precioproduct], [Nombredept], [IDCategoria]) VALUES (N'009       ', N'PanCoco   ', CAST(15 AS Numeric(18, 0)), N'Potres    ', N'009 ')
INSERT [dbo].[Producto] ([IDproducto], [Nombreprodct], [precioproduct], [Nombredept], [IDCategoria]) VALUES (N'010       ', N'T-Shirt   ', CAST(700 AS Numeric(18, 0)), N'Ropa      ', N'010 ')
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_Departamento_Empleado] FOREIGN KEY([IDEmpleado])
REFERENCES [dbo].[Empleado] ([IDEmpleado])
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_Departamento_Empleado]
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_Departamento_Producto1] FOREIGN KEY([IDproducto])
REFERENCES [dbo].[Producto] ([IDproducto])
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_Departamento_Producto1]
GO
ALTER TABLE [dbo].[Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Factura1] FOREIGN KEY([Numfact])
REFERENCES [dbo].[Factura] ([Numfact])
GO
ALTER TABLE [dbo].[Detalle] CHECK CONSTRAINT [FK_Detalle_Factura1]
GO
ALTER TABLE [dbo].[Detalle]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Producto1] FOREIGN KEY([IDproducto])
REFERENCES [dbo].[Producto] ([IDproducto])
GO
ALTER TABLE [dbo].[Detalle] CHECK CONSTRAINT [FK_Detalle_Producto1]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente1] FOREIGN KEY([IDcliente])
REFERENCES [dbo].[Cliente] ([IDcliente])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente1]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Empleado1] FOREIGN KEY([IDEmpleado])
REFERENCES [dbo].[Empleado] ([IDEmpleado])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Empleado1]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([IDCategoria])
REFERENCES [dbo].[Categoria] ([IDCategoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
ALTER DATABASE [Almacen] SET  READ_WRITE
GO