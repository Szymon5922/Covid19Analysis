USE [Covid]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 11/07/2024 12:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[iso_code] [varchar](3) NOT NULL,
	[Country] [nvarchar](255) NULL,
	[Population] [int] NULL,
	[Continent] [nvarchar](255) NULL,
	[cases_total] [int] NULL,
	[deaths_total] [int] NULL,
	[recovered_total] [int] NULL,
	[cases_per_1m_pop] [int] NULL,
	[deaths_per_1m_pop] [int] NULL,
	[death_percentage] [decimal](5, 2) NULL,
 CONSTRAINT [PK_iso_code] PRIMARY KEY CLUSTERED 
(
	[iso_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
