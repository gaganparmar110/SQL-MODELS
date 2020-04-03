
create database HumanResources;

alter database HumanResources add FileGroup FG3;

select groupname as FileGroupName from sysfilegroups;

create Partition Function pfHumanResourcesDates (smalldatetime) 
as RANGE RIGHT FOR VALUES ('2014-01-01 00:00','2015-01-01 00:00','2016-01-01 00:00');
GO

CREATE partition scheme psHumanResources as partition pfHumanResourcesDates to (FG0,FG1,FG2,FG3);

CREATE TABLE [SalesOrders](
	[SalesOrderID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[OrderDate] [smalldatetime] NOT NULL,
	[ShipDate] [datetime] NULL,
	[OrderStatus] [tinyint] NOT NULL,
	[OrderNumber]  [bigint] NOT NULL,

) ON psHumanResources(OrderDate)
sp_help SalesOrders

insert into SalesOrders values ('2014-02-03','2014-04-05',1,101);





select * from TimeSheet