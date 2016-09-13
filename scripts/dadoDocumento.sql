USE [CNAB]
GO

/****** Object:  Table [dbo].[dadoDocumento]    Script Date: 11/09/2016 14:15:42 ******/
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

