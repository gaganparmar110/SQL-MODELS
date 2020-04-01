USE [AdventureWorks2017]
GO

/****** Object:  Table [DirectMarketing].[TVAdvertisement]    Script Date: 01-04-2020 19:56:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DirectMarketing].[TVAdvertisement](
	[TVAdvertisementId] [int] NOT NULL,
	[TVAdvertisementTitle] [varchar](20) NOT NULL,
	[TVAdvertisementCompanyName] [varchar](20) NOT NULL,
	[TVAdvertisementTimeLength] [time](7) NOT NULL,
	[TVAdvertisementSchedule] [varchar](50) NOT NULL,
	[TVAdvertisementType] [varchar](20) NOT NULL,
	[CampaignResponseId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TVAdvertisementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [DirectMarketing].[TVAdvertisement]  WITH CHECK ADD  CONSTRAINT [FK_TVAdvertisement_CampaignResponse] FOREIGN KEY([CampaignResponseId])
REFERENCES [DirectMarketing].[CampaignResponse] ([CampaignResponseId])
GO

ALTER TABLE [DirectMarketing].[TVAdvertisement] CHECK CONSTRAINT [FK_TVAdvertisement_CampaignResponse]
GO


