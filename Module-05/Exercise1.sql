USE [AdventureWorks2017]
GO

CREATE TABLE Sales.MediaOutlet(
	[MediaOutletId] [int] NOT NULL,
	[MediaOutletName] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[City] [nvarchar](50) NULL
);

CREATE TABLE Sales.PrintMediaPlacement(
	[PrintMediaPlacementId] [int] NOT NULL,
	[MediaOutletId] [int] NULL,
	[PlacementDate] [datetime] NULL,
	[PublicationDate] [datetime] NULL,
	[PlacementCost] [decimal](18, 0) NULL,

);
GO