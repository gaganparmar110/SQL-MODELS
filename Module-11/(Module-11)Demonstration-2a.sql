step-1
use SqlAssignment;

step-2
-- Step 1 - Create Table Members
CREATE TABLE TeamMember (
    memberid INT ,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    birthDate DATE,
    PRIMARY KEY (memberId)
);

-- Step 2 - Create Table Reminders
CREATE TABLE reminder (
    id INT ,
    memberId INT,
    message VARCHAR(255) NOT NULL,
    PRIMARY KEY (id , memberId)
);

-- Step 3 - Create Trigger

CREATE TRIGGER after_members_insert
ON TeamMember 
AFTER INSERT
as
BEGIN
    declare @birthDate DATE,
	@id int
	
	select @id = memberId from inserted
	select @birthDate = birthDate from inserted
    IF @birthDate IS NULL 
	Begin
        INSERT INTO reminder(memberId, message)
        VALUES(@id,'Hi please update your date of birth.');
    END
END

INSERT INTO DBO.TeamMember(name,email) VALUES('gagan','@parmar')

select * from dbo.reminder