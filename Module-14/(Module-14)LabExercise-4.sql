step-1
use SqlAssignment

step-2
--FOR XML AUTO
SELECT StudentID, fname, sname 
FROM Student 
FOR XML AUTO;
GO

step-3
-- ELEMENTS with RAW mode
SELECT StudentID, fname, sname 
FROM Student 
FOR XML raw,elements;
GO


step-4
--  NULL columns with ELEMENTS
SELECT StudentID, fname, sname 
FROM Student 
FOR XML AUTO, ELEMENTS XSINIL;
GO

step-5
-- Note the effect of the column alias compared to 14.23
SELECT StudentID, fname, sname 
FROM Student as std
FOR XML AUTO, ELEMENTS XSINIL;
GO

step-6
--  Inline XSD schema
SELECT StudentID, fname, sname 
FROM Student 
FOR XML AUTO, XMLSCHEMA;
GO