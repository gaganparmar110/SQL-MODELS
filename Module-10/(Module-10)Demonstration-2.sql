use AdventureWorks
use master
step-2
ALTER function dbo.CalculateEndDate(@LastDate date)
returns date
AS BEGIN
  RETURN  EOMONTH(@LastDate,2);
END;



step-3
SELECT dbo.CalculateEndDate(SYSDATETIME());
SELECT dbo.CalculateEndDate('2019-03-01');

step-4
SELECT OBJECTPROPERTY(OBJECT_ID('dbo.CalculateEndDate'),'IsDeterministic');

step-5

DROP FUNCTION dbo.CalculateEndDate;

step-6
EOMONTH ( start_date [, month_to_add ] )

alter function dbo.CalculateEndDate(@StartDate date)
returns date
AS BEGIN


  
  return EOMONTH(@StartDate);
END;


step-7
	SELECT dbo.CalculateEndDate(SYSDATETIME());
  SELECT dbo.CalculateEndDate('2018-03-01');


step-8
DROP FUNCTION dbo.CalculateEndDate;

