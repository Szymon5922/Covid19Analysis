USE [Covid]
GO
/****** Object:  Table [dbo].[Vital_readings]    Script Date: 11/07/2024 12:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vital_readings](
	[ID] [bigint] NOT NULL,
	[Oxygen] [float] NULL,
	[PulseRate] [float] NULL,
	[Temperature] [float] NULL,
	[Result] [varchar](max) NULL,
 CONSTRAINT [PK_vital_readings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
