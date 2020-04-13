
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
select JobTitle,FirstName,LastName,FinalSalary,MinSalary,(FinalSalary-MinSalary) as diff from JoinQuery.Employee inner join JoinQuery.Job on JoinQuery.Employee.JobId=JoinQuery.Job.JobId inner join JoinQuery.JobHistory on JoinQuery.Employee.EmployeeId=JoinQuery.JobHistory.EmployeeId
 12>
 select FirstName,FinalSalary from JoinQuery.JobHistory left join JoinQuery.Employee ON JoinQuery.JobHistory.EmployeeId=JoinQuery.Employee.EmployeeId where FinalSalary>10000; 
 13>
 select DepartmentName,FirstName,LastName,HireDate,ManagerFirstName from JoinQuery.Department right join JoinQuery.Employee on JoinQuery.Department.DepartmentId=JoinQuery.Employee.DepartmentId inner join JoinQuery.Manager ON JoinQuery.Department.ManagerId=JoinQuery.Manager.ManagerId WHERE JoinQuery.Manager.Experience>15;



 


