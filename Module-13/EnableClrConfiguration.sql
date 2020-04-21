use AdventureWorks2014


step-1
sp_configure;
go

 step-2
 sp_configure 'show advanced options', 1; 
GO


 step-3
  RECONFIGURE;

 
step-4 
sp_configure 'clr enabled', 1;
go
step-5
 RECONFIGURE;
go


step-6
EXEC sp_configure 'clr strict security', 0;

RECONFIGURE;