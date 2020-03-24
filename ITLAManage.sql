USE [master]
GO
/****** Object:  Database [ITLAManage]    Script Date: 24/3/2020 00:11:05 ******/
CREATE DATABASE [ITLAManage]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ITLAManage', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ITLAManage.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ITLAManage_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ITLAManage_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ITLAManage] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ITLAManage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ITLAManage] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ITLAManage] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ITLAManage] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ITLAManage] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ITLAManage] SET ARITHABORT OFF 
GO
ALTER DATABASE [ITLAManage] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ITLAManage] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ITLAManage] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ITLAManage] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ITLAManage] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ITLAManage] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ITLAManage] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ITLAManage] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ITLAManage] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ITLAManage] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ITLAManage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ITLAManage] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ITLAManage] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ITLAManage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ITLAManage] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ITLAManage] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ITLAManage] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ITLAManage] SET RECOVERY FULL 
GO
ALTER DATABASE [ITLAManage] SET  MULTI_USER 
GO
ALTER DATABASE [ITLAManage] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ITLAManage] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ITLAManage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ITLAManage] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ITLAManage] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ITLAManage', N'ON'
GO
ALTER DATABASE [ITLAManage] SET QUERY_STORE = OFF
GO
USE [ITLAManage]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24/3/2020 00:11:05 ******/
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
/****** Object:  Table [dbo].[Asignaturas]    Script Date: 24/3/2020 00:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignaturas](
	[IDAsignatura] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
 CONSTRAINT [PK_Asignaturas] PRIMARY KEY CLUSTERED 
(
	[IDAsignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleProfesorAsignatura]    Script Date: 24/3/2020 00:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleProfesorAsignatura](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDAsignatura] [int] NOT NULL,
	[IDProfesor] [int] NOT NULL,
	[FechaAsignacion] [datetime] NOT NULL,
	[Cuatrimestre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_DetalleProfesorAsignatura] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 24/3/2020 00:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[IDEstudiante] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Apellido] [varchar](30) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[IDEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstudianteSeleccionAsignatura]    Script Date: 24/3/2020 00:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstudianteSeleccionAsignatura](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDAsignatura] [int] NOT NULL,
	[IDEstudiante] [int] NOT NULL,
	[FechaSeleccion] [date] NOT NULL,
	[Cuatrimestre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_EstudianteSeleccionAsignatura] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 24/3/2020 00:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[IDProfesor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Apellido] [varchar](30) NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[IDProfesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_DetalleProfesorAsignatura_IDAsignatura]    Script Date: 24/3/2020 00:11:05 ******/
CREATE NONCLUSTERED INDEX [IX_DetalleProfesorAsignatura_IDAsignatura] ON [dbo].[DetalleProfesorAsignatura]
(
	[IDAsignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DetalleProfesorAsignatura_IDProfesor]    Script Date: 24/3/2020 00:11:05 ******/
CREATE NONCLUSTERED INDEX [IX_DetalleProfesorAsignatura_IDProfesor] ON [dbo].[DetalleProfesorAsignatura]
(
	[IDProfesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EstudianteSeleccionAsignatura_IDAsignatura]    Script Date: 24/3/2020 00:11:05 ******/
CREATE NONCLUSTERED INDEX [IX_EstudianteSeleccionAsignatura_IDAsignatura] ON [dbo].[EstudianteSeleccionAsignatura]
(
	[IDAsignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_EstudianteSeleccionAsignatura_IDEstudiante]    Script Date: 24/3/2020 00:11:05 ******/
CREATE NONCLUSTERED INDEX [IX_EstudianteSeleccionAsignatura_IDEstudiante] ON [dbo].[EstudianteSeleccionAsignatura]
(
	[IDEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DetalleProfesorAsignatura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleProfesorAsignatura_Asignaturas_IDAsignatura] FOREIGN KEY([IDAsignatura])
REFERENCES [dbo].[Asignaturas] ([IDAsignatura])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DetalleProfesorAsignatura] CHECK CONSTRAINT [FK_DetalleProfesorAsignatura_Asignaturas_IDAsignatura]
GO
ALTER TABLE [dbo].[DetalleProfesorAsignatura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleProfesorAsignatura_Profesores_IDProfesor] FOREIGN KEY([IDProfesor])
REFERENCES [dbo].[Profesores] ([IDProfesor])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DetalleProfesorAsignatura] CHECK CONSTRAINT [FK_DetalleProfesorAsignatura_Profesores_IDProfesor]
GO
ALTER TABLE [dbo].[EstudianteSeleccionAsignatura]  WITH CHECK ADD  CONSTRAINT [FK_EstudianteSeleccionAsignatura_Asignaturas_IDAsignatura] FOREIGN KEY([IDAsignatura])
REFERENCES [dbo].[Asignaturas] ([IDAsignatura])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EstudianteSeleccionAsignatura] CHECK CONSTRAINT [FK_EstudianteSeleccionAsignatura_Asignaturas_IDAsignatura]
GO
ALTER TABLE [dbo].[EstudianteSeleccionAsignatura]  WITH CHECK ADD  CONSTRAINT [FK_EstudianteSeleccionAsignatura_Estudiantes_IDEstudiante] FOREIGN KEY([IDEstudiante])
REFERENCES [dbo].[Estudiantes] ([IDEstudiante])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EstudianteSeleccionAsignatura] CHECK CONSTRAINT [FK_EstudianteSeleccionAsignatura_Estudiantes_IDEstudiante]
GO
/****** Object:  StoredProcedure [dbo].[sp_borrarAsignatura]    Script Date: 24/3/2020 00:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

                CREATE PROCEDURE [dbo].[sp_borrarAsignatura](@IDAsignatura int)
                AS BEGIN
	                DELETE FROM EstudianteSeleccionAsignatura
	                WHERE IDAsignatura = @IDAsignatura

	                DELETE FROM DetalleProfesorAsignatura
	                WHERE IDAsignatura = @IDAsignatura

	                DELETE FROM Asignaturas
	                WHERE IDAsignatura = @IDAsignatura
                END
            
GO
/****** Object:  StoredProcedure [dbo].[sp_borrarEstudiante]    Script Date: 24/3/2020 00:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

            CREATE PROCEDURE [dbo].[sp_borrarEstudiante](@IDEst int)
            AS BEGIN
	            DELETE FROM EstudianteSeleccionAsignatura
	            WHERE IDEstudiante = @IDEst

	            DELETE FROM Estudiantes
	            WHERE IDEstudiante = @IDEst
            END
            
GO
/****** Object:  StoredProcedure [dbo].[sp_borrarProfesor]    Script Date: 24/3/2020 00:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

            CREATE PROCEDURE [dbo].[sp_borrarProfesor](@IDProf int)
            AS BEGIN
	            DELETE FROM DetalleProfesorAsignatura
	            WHERE IDProfesor = @IDProf

	            DELETE FROM Profesores
	            WHERE IDProfesor = @IDProf
            END
            
GO
USE [master]
GO
ALTER DATABASE [ITLAManage] SET  READ_WRITE 
GO
