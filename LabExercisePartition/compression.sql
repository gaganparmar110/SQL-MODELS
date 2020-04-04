USE AdventureWorks2017;
GO
EXEC sp_estimate_data_compression_savings 'SalesOrders', 'SalesOrderDetail', NULL, NULL, 'ROW'
GO