USE [Covid]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 10/07/2024 16:12:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[index] [bigint] NULL,
	[Country] [varchar](max) NULL,
	[Other names] [varchar](max) NULL,
	[ISO 3166-1 alpha-3 CODE] [varchar](max) NULL,
	[Population] [bigint] NULL,
	[Continent] [varchar](max) NULL,
	[Total Cases] [bigint] NULL,
	[Total Deaths] [bigint] NULL,
	[Total Cases/1M pop] [bigint] NULL,
	[Total Deaths/1M pop] [bigint] NULL,
	[Death percentage] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
