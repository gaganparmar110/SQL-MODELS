step-1
use SqlAssignment;

step-2
 -- Execute RAW mode queries
select * from dbo.Student

SELECT StudentId, fname
FROM dbo.Student
WHERE StudentId=1
FOR XML RAW;
GO

SELECT StudentId, fname
FROM dbo.Student
WHERE StudentId=1
FOR XML RAW('Model');
GO

SELECT StudentId, fname
FROM dbo.Student
WHERE StudentId=1
FOR XML RAW('Model'), ROOT('Models');
GO

step-3
-- Execute RAW mode queries
SELECT StudentId, fname
FROM dbo.Student
WHERE StudentId=1
FOR XML auto;
GO

