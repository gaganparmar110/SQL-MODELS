use TutorialDb


alter trigger tg_afterDelete
on dbo.CompanyEmployee
after delete
as
begin
set nocount on;
declare @id int
select @id=d.EmployeeId from deleted as d
delete  from dbo.CompanyDetails where EmployeeId=@id
end

delete from dbo.CompanyEmployee  where EmployeeId=1

select * from dbo.CompanyEmployee;
select * from dbo.CompanyDetails;