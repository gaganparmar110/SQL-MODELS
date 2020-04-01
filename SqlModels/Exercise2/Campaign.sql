USE [AdventureWorks2017]
GO

/****** Object:  Table [DirectMarketing].[CampaignResponse]    Script Date: 01-04-2020 19:58:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DirectMarketing].[CampaignResponse](
	[CampaignResponseId] [int] NOT NULL,
	[CampaignResponseName] [varchar](20) NOT NULL,
	[Location] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[CampaignResponseDate] [datetime] NOT NULL,
	[Cost] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CampaignResponseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


