CREATE TABLE Salaries (
    employeeNumber INT PRIMARY KEY,
    salary DECIMAL(10,2) NOT NULL DEFAULT 0
);

select * from Salaries
INSERT INTO Salaries(employeeNumber,salary)
VALUES
    (1002,5000),
    (1056,7000),
    (1076,8000);
	
-- Step 3 - Create Table SalaryBudgets
	
CREATE TABLE SalaryBudgets(
    total DECIMAL(15,2) NOT NULL
);

INSERT INTO SalaryBudgets(total)
SELECT SUM(salary) 
FROM Salaries;


alter TRIGGER after_salaries_delete

ON Salaries 

AFTER DELETE
as
begin
declare @salary DECIMAL(10,2)
select @salary= salary from deleted
UPDATE SalaryBudgets 
SET total = total - @salary;
end

DELETE FROM Salaries
WHERE employeeNumber = 1002;


SELECT * FROM SalaryBudgets; 