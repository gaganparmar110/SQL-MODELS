use SqlAssignment;

step-2
create view JoinQuery.vCompany
as
select DepartmentName,DepartmentNumber,ManagerFirstName from JoinQuery.Department 
inner join JoinQuery.Manager on JoinQuery.Department.ManagerId=JoinQuery.Manager.ManagerId;

step-3
select * from JoinQuery.vCompany;

step-4
select * from JoinQuery.vCompany order by DepartmentNumber DESC;

step-5
SELECT OBJECT_DEFINITION(OBJECT_ID(N'JoinQuery.vCompany',N'V'));................???

step-6
alter view JoinQuery.vCompany
with Encryption
as
select DepartmentName,DepartmentNumber,ManagerFirstName from JoinQuery.Department 
inner join JoinQuery.Manager on JoinQuery.Department.ManagerId=JoinQuery.Manager.ManagerId;

step-7
SELECT OBJECT_DEFINITION(OBJECT_ID(N'JoinQuery.vCompany',N'V'));

step-8
drop view JoinQuery.vCompany;
