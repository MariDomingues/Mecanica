USE [master]
GO
/****** Object:  Database [Mecanica]    Script Date: 28/05/2019 18:57:42 ******/
CREATE DATABASE [Mecanica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mecanica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Mecanica.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Mecanica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Mecanica_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Mecanica] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mecanica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mecanica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mecanica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mecanica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mecanica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mecanica] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mecanica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mecanica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mecanica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mecanica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mecanica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mecanica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mecanica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mecanica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mecanica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mecanica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Mecanica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mecanica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mecanica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mecanica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mecanica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mecanica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mecanica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mecanica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mecanica] SET  MULTI_USER 
GO
ALTER DATABASE [Mecanica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mecanica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mecanica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mecanica] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Mecanica] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Mecanica]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 28/05/2019 18:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[id] [int] NOT NULL,
	[nome] [varchar](50) NULL,
	[cpf] [varchar](11) NULL,
	[telefone] [varchar](14) NULL,
	[email] [varchar](50) NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 28/05/2019 18:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fabricante](
	[id] [int] NOT NULL,
	[descricao] [varchar](50) NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Fabricante] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 28/05/2019 18:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcionario](
	[id] [int] NOT NULL,
	[nome] [varchar](50) NULL,
	[cpf] [varchar](50) NULL,
	[endereco] [varchar](50) NULL,
	[cidade] [varchar](50) NULL,
	[bairro] [varchar](50) NULL,
	[cargo] [varchar](50) NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Funcionario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 28/05/2019 18:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Senha] [varchar](15) NOT NULL,
	[Funcionario] [int] NULL,
	[Status] [char](1) NULL,
	[Perfil] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manutencao]    Script Date: 28/05/2019 18:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manutencao](
	[id] [int] NOT NULL,
	[dataI] [datetime] NULL,
	[dataT] [datetime] NULL,
	[descricao] [varchar](50) NULL,
	[valManut] [decimal](18, 2) NULL,
	[prazo] [int] NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Manutencao] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManutencaoVeiculo]    Script Date: 28/05/2019 18:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManutencaoVeiculo](
	[manutencao] [int] NULL,
	[veiculo] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 28/05/2019 18:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modelo](
	[id] [int] NOT NULL,
	[fabricante] [int] NULL,
	[descricao] [varchar](50) NULL,
	[versao] [varchar](50) NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Modelo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pecas]    Script Date: 28/05/2019 18:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pecas](
	[id] [int] NOT NULL,
	[descricao] [varchar](50) NULL,
	[fabricante] [int] NULL,
	[valor] [decimal](18, 2) NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Pecas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 28/05/2019 18:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Perfil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](50) NULL,
	[Ocultar] [char](1) NULL,
	[Usuario] [char](1) NULL,
	[UsuarioI] [char](1) NULL,
	[UsuarioA] [char](1) NULL,
	[UsuarioE] [char](1) NULL,
	[Perfil] [char](1) NULL,
	[PerfilI] [char](1) NULL,
	[PerfilA] [char](1) NULL,
	[PerfilE] [char](1) NULL,
	[Venda] [char](1) NULL,
	[VendaI] [char](1) NULL,
	[VendaA] [char](1) NULL,
	[VendaE] [char](1) NULL,
	[Status] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servicos]    Script Date: 28/05/2019 18:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servicos](
	[id] [int] NOT NULL,
	[descricao] [varchar](50) NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Servicos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Veiculo]    Script Date: 28/05/2019 18:57:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Veiculo](
	[id] [int] NOT NULL,
	[fabricante] [int] NULL,
	[modelo] [int] NULL,
	[ano] [int] NULL,
	[cor] [varchar](50) NULL,
	[placa] [varchar](7) NULL,
	[cliente] [int] NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_Veiculo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD FOREIGN KEY([Funcionario])
REFERENCES [dbo].[Funcionario] ([id])
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD FOREIGN KEY([Funcionario])
REFERENCES [dbo].[Funcionario] ([id])
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD FOREIGN KEY([Perfil])
REFERENCES [dbo].[Perfil] ([id])
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD FOREIGN KEY([Perfil])
REFERENCES [dbo].[Perfil] ([id])
GO
USE [master]
GO
ALTER DATABASE [Mecanica] SET  READ_WRITE 
GO
