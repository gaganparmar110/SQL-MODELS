
use SqlAssignment;

CREATE VIEW JoinQuery.vEmployee
AS
SELECT FirstName, LastName,HireDate 
FROM JoinQuery.Employee;
GO

select * from JoinQuery.vEmployee

insert into JoinQuery.vEmployee values ('abc','xyz','2020-01-03')

select * from JoinQuery.vEmployee