use TutorialDb;


alter trigger tg_afterUpdate
on dbo.CompanyEmployee
after update
as
begin
set nocount on;
declare @id int,@designation varchar(50)
select @id=ins.EmployeeId,@designation=ins.Designation from inserted as ins;
update dbo.CompanyDetails set EmployeeDesignation=@designation where EmployeeId=@id
end;


update dbo.CompanyEmployee set Designation='seniore developer' where EmployeeId=1;

select * from dbo.CompanyDetails;
select * from dbo.CompanyEmployee;
