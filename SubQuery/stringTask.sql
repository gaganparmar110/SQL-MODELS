query-1
--query to get jobid and related employee id
select jobid as Job_id,employeeid as Employee_id from employees;

query-2
--query to update the portion of the phone_number in the employees table, within the phone number the substring '124' will be replaced by '999'
UPDATE employees SET PhoneNumber = REPLACE(PhoneNumber, '124', '999') 
WHERE PhoneNumber LIKE '%124%';

query-3
--query to get the details of employeee where length of firstname =>8
SELECT * FROM employees
WHERE LEN(FirstName) >= 8;

query-5
--query to append '@example.com' to email field.
UPDATE employees SET email = CONCAT(email, '@example.com');

query-6	
--query to get employee id,firstname and hire month
select employeeid as Employee_id, FirstName as FirstName, month(Hiredate) as HireMonth from employees;

query-7 
--query to get the employee id,email id(discarding last 3 characters)
select employeeid,left(email,len(email)-3) from employees;

query-8
--query get all first name from employees table in upper case
SELECT UPPER (FirstName) FROM employees;


query-9
--query to extract the last 4 character of phone numbers
SELECT RIGHT(PhoneNumber, 4) as 'PhoneNumber' FROM employees;


query-11
--query to get the locations that have minimum street length
SELECT * FROM locations WHERE LEN(streetAddress) <= (SELECT  MIN(LEN(streetAddress)) FROM locations);


query-14
--query to display firstnam from employee table whose firstname is either start with a,m or j
SELECT FirstName as FirstName,LEN(FirstName) as LengthOfFirstName
FROM employees WHERE FirstName LIKE 'J%'
OR FirstName LIKE 'M%'
OR FirstName LIKE 'A%'
ORDER BY FirstName ;

