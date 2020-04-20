create_view
SELECT dbo.CompanyEmployee.EmployeeId, dbo.CompanyEmployee.EmployeeName, dbo.CompanyDetails.DepartmentName, dbo.CompanyDetails.EmployeeDesignation
FROM   dbo.CompanyDetails INNER JOIN
             dbo.CompanyEmployee ON dbo.CompanyDetails.EmployeeId = dbo.CompanyEmployee.EmployeeId


tigger for updatable_view
create trigger tg_updateview
on vTeamEmployees
instead of update
as
begin
set nocount on
declare @empId int,@empName varchar(50),@deptName varchar(50),@empDesignation varchar(50)
select @empId=ins.EmployeeId,@empName=ins.EmployeeName,
@deptName=ins.DepartmentName,@empDesignation=ins.EmployeeDesignation from inserted as ins;

update vTeamEmployees set EmployeeName=@empName where EmployeeId=@empId;
update vTeamEmployees set DepartmentName=@deptName where EmployeeId=@empId;
end;

update vTeamEmployees set EmployeeName='rahul',DepartmentName='networkteam' where employeeId=2;