USE [AdventureWorks2017]
GO

/****** Object:  Table [DirectMarketing].[Competitor]    Script Date: 01-04-2020 19:57:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DirectMarketing].[Competitor](
	[CompetitorId] [int] NOT NULL,
	[CompetitorName] [varchar](30) NOT NULL,
	[CompetitorProfession] [varchar](20) NOT NULL,
	[CompetitorLocation] [varchar](max) NOT NULL,
	[CometitorNumber] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CompetitorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


