
CREATE TRIGGER tr_afterdelete
ON Student 
AFTER delete
as
BEGIN
    declare @studentId int 
	select @studentId = studentId from deleted;

	delete from FeesReport where studentId = @studentId

	
END

select * from Student;

select * from FeesReport;

delete from Student where studentId = 1;



