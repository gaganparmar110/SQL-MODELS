use SqlAssignment

step-2
CREATE FUNCTION JoinQuery.GetLastEmployeeHired 
(@EmployeeID int, @HireDate date)
RETURNS TABLE
AS
RETURN (SELECT TOP(@EmployeeId)
    emp.EmployeeID,emp.StartingDate
                FROM JoinQuery.JobHistory AS emp
                WHERE emp.EmployeeID = @EmployeeID
                ORDER BY emp.StartingDate DESC
               );


 step-3
 SELECT * FROM JoinQuery.GetLastEmployeeHired (2,'2020-04-13');



step-4
DROP FUNCTION JoinQuery.GetLastEmployeeHired;