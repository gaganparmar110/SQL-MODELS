use SqlAssignment;

create schema JoinQuery;

create table JoinQuery.Addresses(LocationId int,StreetAddress varchar(50),
City varchar(50),StateProvince varchar(50),CountryName varchar(50));

create table JoinQuery.Department(DepartmentId int,DepartmentName varchar(50),DepartmentNumber int,ManagerId int Foreign Key references JoinQuery.Manager(ManagerId);)

create table JoinQuery.Employee (EmployeeId int,FirstName varchar(50),LastName varchar(50),DepartmentId int foreign KEY references JoinQuery.Department(DepartmentId),JobId int foreign KEY references JoinQuery.Job(JobId),HireDate date )

create table JoinQuery.Manager(ManagerId int,ManagerFirstName varchar(50),ManagerLastName varchar(50))      

create table JoinQuery.Job(JobId int,JobTitle varchar(50),Salary bigINT);
create table JoinQuery.JobHistory(JobHistoryId int,EmployeeId int Foreign Key References JoinQuery.Employee(EmployeeId),Startingate date,EndingDate date)

select * from JoinQuery.Job
select * from JoinQuery.JobHistory
select * from JoinQuery.Manager
select * from JoinQuery.Department
select * from JoinQuery.Addresses
select * from JoinQuery.Employee


1>
select DepartmentId,StreetAddress,City,StateProvince,CountryName from JoinQuery.Addresses left JOIN JoinQuery.Department ON JoinQuery.Addresses.LocationId=JoinQuery.Department.LocationId;

2>
select FirstName,LastName,DepartmentName from JoinQuery.Employee left jOIN JoinQuery.Department ON JoinQuery.Employee.DepartmentId=JoinQuery.Department.DepartmentId;
3>
select FirstName,LastName,JobTitle,DepartmentNumber,DepartmentName from JoinQuery.Employee inner join JoinQuery.Department on JoinQuery.Employee.DepartmentId=JoinQuery.Department.DepartmentId inner join JoinQuery.Job on JoinQuery.Employee.JobId=JoinQuery.Job.JobId
where JoinQuery.Addresses.CountryName='India';
4>
select LastName,ManagerLastName from JoinQuery.Employee inner join JoinQuery.Department on JoinQuery.Employee.DepartmentId=JoinQuery.Department.DepartmentId INNER JOIN JoinQuery.Manager on JoinQuery.Department.ManagerId=JoinQuery.Manager.ManagerId; 
5>
select FirstName,LastName,HireDate from JoinQuery.Employee where HireDate>'2020-04-12';
6>
 select DepartmentName,count(EmployeeId)AS NumberOfEmployee  from JoinQuery.Department left join JoinQuery.Employee on JoinQuery.Department.DepartmentId=JoinQuery.Employee.DepartmentId group by DepartmentName;
7>
select FirstName,JobTitle,DATEDIFF(DAY,StartingDate,EndingDate) as NumberOfJobDays from JoinQuery.JobHistory left Join JoinQuery.Employee ON JoinQuery.JobHistory.EmployeeId=JoinQuery.Employee.EmployeeId inner JOIN  JoinQuery.Job on JoinQuery.Employee.JobId=JoinQuery.Job.JobId;
8>
select DepartmentName,ManagerFirstName from JoinQuery.Department right join JoinQuery.Manager on JoinQuery.Department.ManagerId=JoinQuery.Manager.ManagerId;
9>
select DepartmentName,ManagerFirstName,City from JoinQuery.Department right join JoinQuery.Manager on JoinQuery.Department.ManagerId=JoinQuery.Manager.ManagerId left join JoinQuery.Addresses on JoinQuery.Department.LocationId=JoinQuery.Addresses.LocationId;
10>
select JobTitle,avg(Salary) as AverageOfSalary from JoinQuery.Job left JOIN JoinQuery.Employee ON JoinQuery.Job.JobId=JoinQuery.Employee.JobId group by JobTitle;
 select avg(salary) from JoinQuery.Job
 11>


 


