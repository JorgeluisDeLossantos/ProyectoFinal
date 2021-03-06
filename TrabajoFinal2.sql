/*Nombre: Pedro de Los Santos    --     Matricula: 16-SIIN-1-099    --     Seccion: 0541*/
/*Nombre: Robinson Marte         --     Matricula: 16-SIIN-1-027    --     Seccion: 0541*/
/*Nombre: Jorge De Los Santos    --     Matricula: 16-SIIN-1-041    --     Seccion: 0541*/

USE [master]
GO
/****** Object:  Database [TrabajoFinal2]    Script Date: 06/04/2018 3:48:06 ******/
CREATE DATABASE [TrabajoFinal2]

USE [TrabajoFinal2]
GO
/****** Object:  Table [dbo].[Despachos]    Script Date: 06/04/2018 3:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Despachos](
	[Numero] [int] NOT NULL,
	[Capacidad] [int] NULL,
 CONSTRAINT [PK_Despachos] PRIMARY KEY CLUSTERED 
(
	[Numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Directores]    Script Date: 06/04/2018 3:48:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Directores](
	[DNI] [varchar](8) NOT NULL,
	[NomApels] [nvarchar](255) NULL,
	[DNIJefe] [varchar](8) NULL,
	[Despacho] [int] NULL,
 CONSTRAINT [PK_Directores] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (1, 311531485)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (2, 35151153)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (3, 16351384)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (4, 384135168)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (5, 13516843)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (6, 131512351)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (7, 135168415)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (8, 641351)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (9, 161531)
INSERT [dbo].[Despachos] ([Numero], [Capacidad]) VALUES (10, 61531638)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'D1', N'Hansel Ruiz', N'D10', 1)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'D10', N'Victor Decena', N'D1', 10)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'D2', N'Magnolia Mendez', N'D9', 2)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'D3', N'Omar Echevarria', N'D8', 3)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'D4', N'Gilbert Miranda', N'D7', 4)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'D5', N'Ernesto Terrero', N'D6', 5)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'D6', N'Cristofer Cuello', N'D5', 6)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'D7', N'Franny Almanzar', N'D4', 7)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'D8', N'Pablo Kiñonez', N'D3', 8)
INSERT [dbo].[Directores] ([DNI], [NomApels], [DNIJefe], [Despacho]) VALUES (N'D9', N'Gerald Urbaez', N'D2', 9)
ALTER TABLE [dbo].[Directores]  WITH CHECK ADD  CONSTRAINT [FK_Directores_Despachos] FOREIGN KEY([Despacho])
REFERENCES [dbo].[Despachos] ([Numero])
GO
ALTER TABLE [dbo].[Directores] CHECK CONSTRAINT [FK_Directores_Despachos]
GO
ALTER TABLE [dbo].[Directores]  WITH CHECK ADD  CONSTRAINT [FK_Directores_Directores] FOREIGN KEY([DNIJefe])
REFERENCES [dbo].[Directores] ([DNI])
GO
ALTER TABLE [dbo].[Directores] CHECK CONSTRAINT [FK_Directores_Directores]
GO
USE [master]
GO
ALTER DATABASE [TrabajoFinal2] SET  READ_WRITE 
GO
