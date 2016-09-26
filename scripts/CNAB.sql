USE [master]
GO
/****** Object:  Database [CNAB]    Script Date: 26/09/2016 14:18:33 ******/
CREATE DATABASE [CNAB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CNAB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.OPERACOES\MSSQL\DATA\CNAB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CNAB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.OPERACOES\MSSQL\DATA\CNAB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CNAB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CNAB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CNAB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CNAB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CNAB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CNAB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CNAB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CNAB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CNAB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CNAB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CNAB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CNAB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CNAB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CNAB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CNAB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CNAB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CNAB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CNAB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CNAB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CNAB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CNAB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CNAB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CNAB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CNAB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CNAB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CNAB] SET  MULTI_USER 
GO
ALTER DATABASE [CNAB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CNAB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CNAB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CNAB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CNAB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CNAB]
GO
/****** Object:  Table [dbo].[banco]    Script Date: 26/09/2016 14:18:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[banco](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dadoCabecalho]    Script Date: 26/09/2016 14:18:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dadoCabecalho](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](60) NULL,
	[linha] [int] NULL,
	[caracterInicial] [int] NULL,
	[caracterFinal] [int] NULL,
	[tipoDoDado] [varchar](20) NULL,
	[formatacao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dadoDocumento]    Script Date: 26/09/2016 14:18:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dadoDocumento](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](60) NULL,
	[linha] [int] NULL,
	[caracterInicial] [int] NULL,
	[caracterFinal] [int] NULL,
	[tipoDoDado] [varchar](20) NULL,
	[formatacao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dadoRodape]    Script Date: 26/09/2016 14:18:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dadoRodape](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](60) NULL,
	[linha] [int] NULL,
	[caracterInicial] [int] NULL,
	[caracterFinal] [int] NULL,
	[tipoDoDado] [varchar](20) NULL,
	[formatacao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[formatacao]    Script Date: 26/09/2016 14:18:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[formatacao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](60) NULL,
	[quantidadeCaracteres] [int] NULL,
	[quantidadeLinhasCabecalho] [int] NULL,
	[quantidadeLinhasRodape] [int] NULL,
	[banco] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[banco] ON 

INSERT [dbo].[banco] ([id], [nome]) VALUES (1, N'Santander')
SET IDENTITY_INSERT [dbo].[banco] OFF
SET IDENTITY_INSERT [dbo].[dadoCabecalho] ON 

INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (1, N'Código do Banco na compensação', 1, 1, 3, N'Numerico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (2, N'Lote de serviço', 1, 4, 7, N'Numerico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (3, N'Tipo de registro', 1, 8, 8, N'Numerico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (4, N'Reservado (uso Banco)', 1, 9, 16, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (5, N'Tipo de inscrição da empresa', 1, 17, 17, N'Numerico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (6, N'Nº de inscrição da empresa', 1, 18, 32, N'Numerico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (7, N'Código de Transmissão', 1, 33, 47, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (8, N'Reservado (uso Banco)', 1, 48, 72, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (9, N'Nome da empresa', 1, 73, 102, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (10, N'Nome do Banco', 1, 103, 132, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (11, N'Reservado (uso Banco)', 1, 133, 142, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (12, N'Código remessa', 1, 143, 143, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (13, N'Data de geração do arquivo', 1, 144, 151, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (14, N'Reservado (uso Banco)', 1, 152, 157, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (15, N'Nº seqüencial do arquivo', 1, 158, 163, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (16, N'Nº da versão do layout do arquivo', 1, 164, 166, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (17, N'Reservado (uso Banco)', 1, 167, 240, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (18, N'Código do Banco na compensação', 2, 1, 3, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (19, N'Numero do lote remessa', 2, 4, 7, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (20, N'Tipo de registro', 2, 8, 8, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (21, N'Tipo de operação', 2, 9, 9, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (22, N'Tipo de serviço', 2, 10, 11, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (23, N'Reservado (uso Banco)', 2, 12, 13, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (24, N'Nº da versão do layout do lote', 2, 14, 16, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (25, N'Reservado (uso Banco)', 2, 17, 17, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (26, N'Tipo de inscrição da empresa', 2, 18, 18, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (27, N'Nº de inscrição da empresa', 2, 19, 33, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (28, N'Reservado (uso Banco)', 2, 34, 53, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (29, N'Código de Transmissão', 2, 54, 68, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (30, N'Reservado uso Banco', 2, 69, 73, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (31, N'Nome do Cedente', 2, 74, 103, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (32, N'Mensagem 1', 2, 104, 143, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (33, N'Mensagem 2', 2, 144, 183, N'Alfanumérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (34, N'Número remessa/retorno', 2, 184, 191, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (35, N'Data da gravação remessa/retorno', 2, 192, 199, N'Numérico', 1)
INSERT [dbo].[dadoCabecalho] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (36, N'Reservado (uso Banco)', 2, 200, 240, N'Alfanumérico', 1)
SET IDENTITY_INSERT [dbo].[dadoCabecalho] OFF
SET IDENTITY_INSERT [dbo].[dadoDocumento] ON 

INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (1, N'Código do Banco na compensação', 1, 1, 3, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (2, N'Numero do lote remessa', 1, 4, 7, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (3, N'Tipo de registro', 1, 8, 8, N'Numerico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (4, N'Tipo de operação', 1, 9, 9, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (5, N'Tipo de serviço', 1, 10, 11, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (6, N'Reservado (uso Banco)', 1, 12, 13, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (7, N'Nº da versão do layout do lote', 1, 14, 16, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (8, N'Reservado (uso Banco)', 1, 17, 17, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (9, N'Tipo de inscrição da empresa', 1, 18, 18, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (10, N'Nº de inscrição da empresa', 1, 19, 33, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (11, N'Reservado (uso Banco)', 1, 34, 53, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (12, N'Código de Transmissão', 1, 54, 68, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (13, N'Reservado uso Banco', 1, 69, 73, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (14, N'Nome do Cedente', 1, 74, 103, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (15, N'Mensagem 1', 1, 104, 143, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (16, N'Mensagem 2', 1, 144, 183, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (17, N'Número remessa/retorno', 1, 184, 191, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (18, N'Data da gravação remessa/retorno', 1, 192, 199, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (19, N'Reservado (uso Banco)', 1, 200, 240, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (20, N'Código do Banco na compensação', 2, 1, 3, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (21, N'Numero do lote remessa', 2, 4, 7, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (22, N'Tipo de registro', 2, 9, 13, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (23, N'Nº seqüencial do registro de lote', 2, 9, 13, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (24, N'Cód. Segmento do registro detalhe', 2, 14, 14, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (25, N'Reservado (uso Banco)', 2, 15, 15, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (26, N'Código de movimento remessa', 2, 16, 17, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (27, N'Agência do Cedente', 2, 18, 21, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (28, N'Dígito da Agência do Cedente', 2, 22, 22, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (29, N'Número da conta corrente', 2, 23, 31, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (30, N'Dígito verificador da conta', 2, 32, 32, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (31, N'Conta cobrança', 2, 33, 41, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (32, N'Dígito da conta cobrança', 2, 42, 42, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (33, N'Reservado (uso Banco)', 2, 43, 44, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (34, N'Identificação do título no Banco', 2, 45, 57, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (35, N'Tipo de cobrança', 2, 58, 58, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (36, N'Forma de Cadastramento', 2, 59, 59, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (37, N'Tipo de documento', 2, 60, 60, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (38, N'Reservado (uso Banco)', 2, 61, 61, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (39, N'Reservado (uso Banco)', 2, 61, 61, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (40, N'Nº do documento', 2, 63, 77, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (41, N'Data de vencimento do título', 2, 78, 85, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (42, N'Valor nominal do título', 2, 86, 100, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (43, N'Agência encarregada da cobrança', 2, 101, 104, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (44, N'Dígito da Agência do Cedente', 2, 105, 105, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (45, N'Reservado (uso Banco)', 2, 106, 106, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (46, N'Espécie do título', 2, 107, 108, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (47, N'Identif. de título Aceito/Não Aceito', 2, 109, 109, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (48, N'Data da emissão do título', 2, 110, 117, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (49, N'Código do juros de mora', 2, 118, 118, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (50, N'Data do juros de mora', 2, 119, 126, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (51, N'Valor da mora/dia ou Taxa mensal', 2, 127, 141, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (52, N'Código do desconto 1', 2, 142, 142, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (53, N'Data de desconto 1', 2, 143, 150, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (54, N'Valor ou Percentual do desconto concedido', 2, 151, 165, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (55, N'Valor do IOF a ser recolhido', 2, 166, 180, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (56, N'Valor do abatimento', 2, 181, 195, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (57, N'Identificação do título na empresa', 2, 196, 220, N'Alfanumérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (58, N'Código para protesto', 2, 221, 221, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (59, N'Número de dias para protesto', 2, 222, 223, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (60, N'Código para Baixa/Devolução', 2, 224, 224, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (61, N'Reservado (uso Banco)', 2, 225, 225, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (62, N'Número de dias para Baixa/Devolução', 2, 226, 227, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (63, N'Código da moeda', 2, 228, 229, N'Numérico', 1)
INSERT [dbo].[dadoDocumento] ([id], [nome], [linha], [caracterInicial], [caracterFinal], [tipoDoDado], [formatacao]) VALUES (64, N'Reservado (uso Banco)', 2, 230, 240, N'Alfanumérico', 1)
SET IDENTITY_INSERT [dbo].[dadoDocumento] OFF
SET IDENTITY_INSERT [dbo].[formatacao] ON 

INSERT [dbo].[formatacao] ([id], [nome], [quantidadeCaracteres], [quantidadeLinhasCabecalho], [quantidadeLinhasRodape], [banco]) VALUES (1, N'Remessa', 240, 2, 2, 1)
SET IDENTITY_INSERT [dbo].[formatacao] OFF
USE [master]
GO
ALTER DATABASE [CNAB] SET  READ_WRITE 
GO
