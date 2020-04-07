1>
USE AdventureWorks2017;
GO


2>
CREATE TABLE dbo.Students
( StudentsId int IDENTITY(1,1) PRIMARY KEY,
  StudentName varchar(50) NOT NULL,
  PhoneNumber varchar(50) NOT NULL  
);
GO


3>
SELECT * FROM sys.indexes 

4>
INSERT dbo.Students (StudentName, PhoneNumber)
    VALUES('gagan','088927398')



5>
SELECT * FROM sys.dm_db_index_physical_stats(DB_ID(),OBJECT_ID('dbo.Students'),NULL,NULL,'');
GO

6>
  UPDATE dbo.Students SET PhoneNumber = '9755776179'
    WHERE StudentsID = 1;
7>
SELECT * FROM sys.dm_db_index_physical_stats(DB_ID(),OBJECT_ID('dbo.Students'),NULL,NULL,'');
GO
select * from dbo.Students

8>
DROP TABLE dbo.Students;
GO