/*Nombre: Pedro de Los Santos    --     Matricula: 16-SIIN-1-099    --     Seccion: 0541*/
/*Nombre: Robinson Marte         --     Matricula: 16-SIIN-1-027    --     Seccion: 0541*/
/*Nombre: Jorge De Los Santos    --     Matricula: 16-SIIN-1-041    --     Seccion: 0541*/

USE [master]
GO
/****** Object:  Database [TrabajoFinal1]    Script Date: 06/04/2018 3:40:50 ******/
CREATE DATABASE [TrabajoFinal1]

USE [TrabajoFinal1]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 06/04/2018 3:40:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[ClasificacionEdad] [int] NULL,
 CONSTRAINT [PK_Peliculas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salas]    Script Date: 06/04/2018 3:40:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salas](
	[Codigo] [int] NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Pelicula] [int] NULL,
 CONSTRAINT [PK_Salas] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (1, N'El Rey Leon', 14)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (2, N'Titanic', 15)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (3, N'Narnia', 13)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (4, N'Gladiator', 15)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (5, N'El Pianista', 17)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (6, N'Toy Story', 5)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (7, N'Shrek', 5)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (8, N'Avatar', 14)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (9, N'Regreso al futuro', 16)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (10, N'El Padrino', 12)
INSERT [dbo].[Peliculas] ([Codigo], [Nombre], [ClasificacionEdad]) VALUES (11, NULL, NULL)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (1, N'SALA#1', 1)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (2, N'SALA#2', 2)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (3, N'SALA#3', 3)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (4, N'SALA#4', 4)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (5, N'SALA#5', 5)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (6, N'SALA#6', 6)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (7, N'SALA#7', 7)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (8, N'SALA#8', 8)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (9, N'SALA#9', 9)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (10, N'SALA#10', 1)
INSERT [dbo].[Salas] ([Codigo], [Nombre], [Pelicula]) VALUES (11, NULL, 11)
ALTER TABLE [dbo].[Salas]  WITH CHECK ADD  CONSTRAINT [FK_Salas_Peliculas] FOREIGN KEY([Pelicula])
REFERENCES [dbo].[Peliculas] ([Codigo])
GO
ALTER TABLE [dbo].[Salas] CHECK CONSTRAINT [FK_Salas_Peliculas]
GO
USE [master]
GO
ALTER DATABASE [TrabajoFinal1] SET  READ_WRITE 
GO
