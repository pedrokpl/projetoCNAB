USE [CNAB]
GO

/****** Object:  Table [dbo].[formatacao]    Script Date: 11/09/2016 14:15:02 ******/
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

