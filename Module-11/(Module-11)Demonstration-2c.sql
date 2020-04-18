
use TutorialDb;

SELECT * FROM student
select * from FeesReport

alter TRIGGER tr_afterupdate
ON Student 
AFTER UPDATE
as
BEGIN   

	IF (UPDATE(studentFeesStatus))
	declare @status varchar(100),@StudentId int
	select @StudentId=ins.studentid,@status=ins.studentFeesStatus from inserted as ins
	UPDATE  FeesReport SET studentFeesStatus=@status  where studentId = @studentId
	end
	

select * from FeesReport;
select * from Student;

update Student set studentFeesStatus='submitted' where studentId=4;






