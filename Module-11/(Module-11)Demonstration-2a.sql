use TutorialDb;

CREATE TABLE Student (
    studentId INT ,
    studentName VARCHAR(100) NOT NULL,
    email VARCHAR(255),
	studentFeesStatus varchar(100) NOT NULL,
    PRIMARY KEY (studentId)
);

CREATE TABLE FeesReport  (
    feesId INT ,
    studentId INT,
    studentFeesStatus VARCHAR(100) NOT NULL,
    PRIMARY KEY (feesId)
);

CREATE TRIGGER tr_afterinsert
ON Student 
AFTER INSERT
as
BEGIN
    declare @Fees VARCHAR(100) ,
	@id int
	
	select @id = studentId from inserted
	select @Fees = studentFeesStatus from inserted
    IF(@Fees = 'Submitted' )
	Begin
        INSERT INTO FeesReport(studentId, studentFeesStatus)
        VALUES(@id,'submitted');
    END
END

INSERT INTO DBO.Student(studentName,email,studentFeesStatus) VALUES('gagan','gagan@gmail.com','submitted');

select * from FeesReport;
select * from Student;


select * from dbo.FeesReport