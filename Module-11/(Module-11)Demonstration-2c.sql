use SqlAssignment;
step-2
create table dbo.CustomerLogs(StudentId int,ActionPerform varchar(10));

step-3
create TRIGGER [dbo].[StudentUPDATE]
       ON dbo.NewStudent 
AFTER UPDATE
AS

DECLARE @StudentId INT,
           @SurName VARCHAR(50),
	   @FirstName VARCHAR(50),
	   @MiddleName VARCHAR(50),
	   @Gender varchar(50), 
	   @Date date,
	   @Action varchar(50);

	   SELECT @StudentId = ins.StudentId FROM INSERTED ins;
	    SELECT @SurName = ins.Surname FROM INSERTED ins;
		 SELECT @FirstName = ins.FirstName FROM INSERTED ins;
		  SELECT @MiddleName = ins.MiddleName FROM INSERTED ins;
		   SELECT @Gender = ins.Gender FROM INSERTED ins;
		    SELECT @Date = ins.AdmitDate FROM INSERTED ins;
       
       IF UPDATE(FirstName)
       BEGIN
              SET @Action = 'Updated FirstName'
       END
 
       IF UPDATE(Surname)
       BEGIN
              SET @Action = 'Updated LastName'
       END
 
       INSERT INTO CustomerLogs(StudentId,ActionPerform)
       VALUES(@StudentId, @Action)
	  
PRINT 'We Successfully Fired the AFTER UPDATE Triggers in SQL Server.'
GO

step-4
update dbo.NewStudent set FirstName='newGagan' where StudentId=4;



select * from dbo.CustomerLogs;
select * from dbo.NewStudent;

