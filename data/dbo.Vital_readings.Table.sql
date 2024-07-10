USE [Covid]
GO
/****** Object:  Table [dbo].[Vital_readings]    Script Date: 10/07/2024 16:12:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vital_readings](
	[index] [bigint] NULL,
	[ID] [varchar](max) NULL,
	[Oxygen] [float] NULL,
	[PulseRate] [float] NULL,
	[Temperature] [float] NULL,
	[Result] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
