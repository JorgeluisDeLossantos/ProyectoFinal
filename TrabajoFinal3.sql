/*Nombre: Pedro de Los Santos    --     Matricula: 16-SIIN-1-099    --     Seccion: 0541*/
/*Nombre: Robinson Marte         --     Matricula: 16-SIIN-1-027    --     Seccion: 0541*/
/*Nombre: Jorge De Los Santos    --     Matricula: 16-SIIN-1-041    --     Seccion: 0541*/


USE [master]
GO
/****** Object:  Database [TrabajoFinal3]    Script Date: 06/04/2018 4:01:11 ******/
CREATE DATABASE [TrabajoFinal3]

USE [TrabajoFinal3]
GO
/****** Object:  Table [dbo].[Piezas]    Script Date: 06/04/2018 4:01:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Piezas](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
 CONSTRAINT [PK_Piezas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 06/04/2018 4:01:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[Id] [char](4) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Suministra]    Script Date: 06/04/2018 4:01:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Suministra](
	[CodigoPieza] [int] NULL,
	[IdProveedor] [char](4) NULL,
	[Precio] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Piezas] ([Codigo], [Nombre]) VALUES (1, N'T-Shirt')
INSERT [dbo].[Piezas] ([Codigo], [Nombre]) VALUES (2, N'Gorras')
INSERT [dbo].[Piezas] ([Codigo], [Nombre]) VALUES (3, N'Pantalones')
INSERT [dbo].[Piezas] ([Codigo], [Nombre]) VALUES (4, N'Termos')
INSERT [dbo].[Piezas] ([Codigo], [Nombre]) VALUES (5, N'Zapatillas')
INSERT [dbo].[Piezas] ([Codigo], [Nombre]) VALUES (6, N'Botas')
INSERT [dbo].[Piezas] ([Codigo], [Nombre]) VALUES (7, N'Lentes')
INSERT [dbo].[Piezas] ([Codigo], [Nombre]) VALUES (8, N'Sombrillas')
INSERT [dbo].[Piezas] ([Codigo], [Nombre]) VALUES (9, N'Mochila')
INSERT [dbo].[Piezas] ([Codigo], [Nombre]) VALUES (10, N'Cuadernos')
INSERT [dbo].[Proveedores] ([Id], [Nombre]) VALUES (N'1   ', N'Presidente')
INSERT [dbo].[Proveedores] ([Id], [Nombre]) VALUES (N'10  ', N'UASD')
INSERT [dbo].[Proveedores] ([Id], [Nombre]) VALUES (N'2   ', N'Brahma')
INSERT [dbo].[Proveedores] ([Id], [Nombre]) VALUES (N'3   ', N'Bohemia')
INSERT [dbo].[Proveedores] ([Id], [Nombre]) VALUES (N'4   ', N'Malta India')
INSERT [dbo].[Proveedores] ([Id], [Nombre]) VALUES (N'5   ', N'Café Santo Domingo')
INSERT [dbo].[Proveedores] ([Id], [Nombre]) VALUES (N'6   ', N'Vive100')
INSERT [dbo].[Proveedores] ([Id], [Nombre]) VALUES (N'7   ', N'911')
INSERT [dbo].[Proveedores] ([Id], [Nombre]) VALUES (N'8   ', N'Coca-Cola')
INSERT [dbo].[Proveedores] ([Id], [Nombre]) VALUES (N'9   ', N'O&M')
INSERT [dbo].[Suministra] ([CodigoPieza], [IdProveedor], [Precio]) VALUES (1, N'9   ', 1000)
INSERT [dbo].[Suministra] ([CodigoPieza], [IdProveedor], [Precio]) VALUES (2, N'8   ', 2000)
INSERT [dbo].[Suministra] ([CodigoPieza], [IdProveedor], [Precio]) VALUES (3, N'7   ', 3000)
INSERT [dbo].[Suministra] ([CodigoPieza], [IdProveedor], [Precio]) VALUES (4, N'6   ', 4000)
INSERT [dbo].[Suministra] ([CodigoPieza], [IdProveedor], [Precio]) VALUES (5, N'5   ', 5000)
INSERT [dbo].[Suministra] ([CodigoPieza], [IdProveedor], [Precio]) VALUES (6, N'4   ', 6000)
INSERT [dbo].[Suministra] ([CodigoPieza], [IdProveedor], [Precio]) VALUES (7, N'3   ', 7000)
INSERT [dbo].[Suministra] ([CodigoPieza], [IdProveedor], [Precio]) VALUES (8, N'2   ', 8000)
INSERT [dbo].[Suministra] ([CodigoPieza], [IdProveedor], [Precio]) VALUES (9, N'1   ', 9000)
INSERT [dbo].[Suministra] ([CodigoPieza], [IdProveedor], [Precio]) VALUES (10, N'10  ', NULL)
INSERT [dbo].[Suministra] ([CodigoPieza], [IdProveedor], [Precio]) VALUES (8, N'8   ', NULL)
INSERT [dbo].[Suministra] ([CodigoPieza], [IdProveedor], [Precio]) VALUES (9, N'9   ', NULL)
INSERT [dbo].[Suministra] ([CodigoPieza], [IdProveedor], [Precio]) VALUES (10, N'10  ', NULL)
ALTER TABLE [dbo].[Suministra]  WITH CHECK ADD  CONSTRAINT [FK_Suministra_Piezas] FOREIGN KEY([CodigoPieza])
REFERENCES [dbo].[Piezas] ([Codigo])
GO
ALTER TABLE [dbo].[Suministra] CHECK CONSTRAINT [FK_Suministra_Piezas]
GO
ALTER TABLE [dbo].[Suministra]  WITH CHECK ADD  CONSTRAINT [FK_Suministra_Proveedores] FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedores] ([Id])
GO
ALTER TABLE [dbo].[Suministra] CHECK CONSTRAINT [FK_Suministra_Proveedores]
GO
USE [master]
GO
ALTER DATABASE [TrabajoFinal3] SET  READ_WRITE 
GO
