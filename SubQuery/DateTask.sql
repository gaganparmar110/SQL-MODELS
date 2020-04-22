query-1
--query to display the first day of the month (in datetime format)
--three months before the current month
select dateadd(month, -3, dateadd(day, 1 - day('2014-09-03'), '2014-09-03'))
query-2
--query to display the last day of the month (in datetime format) 
--three months before the current month. 
select DATEADD(MONTH,-3,DATEADD(day, 0 + (day(eomonth('2014-09-03'))-day('2014-09-03')),'2014-09-03'));

query-4
--firstday of current year
SELECT DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0)

--select DATEDIFF(yy,0,GETDATE())
--select DATEADD(yy,120,0)
query-5
--lastday of currrent year
SELECT DATEADD (dd, -1, DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) +1, 0))

query-6
--calculate age in year
select DATEDIFF(YEAR,'1998-10-11',getdate());

query-7
--(September 4, 2014)
	select convert(varchar, getdate(), 107)

query-8
--(Thursday September 2014)

query-9
--query to extract the year from the current date. 
select year('1998-10-11');
select DATEPART(YY,'1998-10-11');

query-10
--query to get the DATE value from a given day (number in N).(730677)
--SELECT datetime(730677);
--select DATEPART(YY, 730677);

query-11
use SqlAssignment
select * from JoinQuery.Employee
select FirstName,HireDate from JoinQuery.Employee where HireDate between '2019-01-02' and '2020-02-01';

query-12
--query to display the current date in the format
select convert(varchar, getdate(), 106)

query-13
--(05/09/2014)
	select convert(varchar, getdate(), 101)

query-14
--(12:00 AM Sep 5, 2014)
	select convert(varchar, getdate(), 100)

query-15
--query to get the firstname, lastname who joined in the month of June
use SqlAssignment;
SELECT FirstName, LastName FROM joinquery.employee WHERE MONTH(HireDate) =  6;

query-16
--query to get the years in which more than 10 employees joined
use SqlAssignment
select * from JoinQuery.Employee
SELECT HireDate FROM joinquery.Employee
GROUP BY HireDate HAVING COUNT(EmployeeId) > 10;

query-17
--query to get the department ID, year, and number of employees joined.
select departmentid,year(HireDate) as year,count(EmployeeId)
as number_of_employe from joinquery.employee group by DepartmentId,HireDate

query-18
--query to get department name, manager name, and salary of the 
--manager for all managers whose experience is more than 5 years.

select DepartmentName,FirstName,LastName,HireDate,ManagerFirstName 
from JoinQuery.Department
right join JoinQuery.Employee on JoinQuery.Department.DepartmentId=JoinQuery.Employee.DepartmentId 
inner join JoinQuery.Manager ON JoinQuery.Department.ManagerId=JoinQuery.Manager.ManagerId 
WHERE JoinQuery.Manager.Experience>5;

query-19
--query to get employee ID, last name, and date of first salary of the employees. 
select EmployeeId,LastName,HireDate as dateofSalary from JoinQuery.Employee

query-20
--query to get first name, hire date and experience of the employees
select FirstName,HireDate,Experience from JoinQuery.Employee

query-21
--query to get first name of employees who joined in 1987
select FirstName as NameOfEmployee from JoinQuery.Employee where year(HireDate)=1987;


 


