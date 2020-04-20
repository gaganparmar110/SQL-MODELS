Use TutorialDb;

create table CompanyEmployee(EmployeeId int Identity(1,1),EmployeeName varchar(50),
Address varchar(50),MobileNo bigint,Designation varchar(50),
Primary key(EmployeeId));

create table CompanyDetails(CompanyDetailsId int Identity(1,1),
EmployeeId int constraint fk_const Foreign key (EmployeeId) References CompanyEmployee(EmployeeId),
EmployeeDesignation varchar(50),Primary Key(CompanyDetailsId));

create trigger tg_afterinsert_employee
on dbo.CompanyEmployee
after insert
as
begin
set nocount on;
declare @employeeid int,@designation varchar(50);
select @employeeid=ins.EmployeeId,@designation=ins.Designation from inserted as ins;
insert into dbo.CompanyDetails values(@employeeid,@designation);

end;

insert into dbo.CompanyEmployee values('rahul','d1-504',9755776178,'developer');
select * from dbo.CompanyEmployee;
select * from dbo.CompanyDetails;