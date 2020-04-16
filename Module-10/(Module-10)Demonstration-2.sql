use AdventureWorks
use master
step-2
create function dbo.CalculateEndDate(@LastDate date)
returns date
AS BEGIN
  RETURN DATEADD(day, 0 - DAY(@LastDate), @LastDate);
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
declare @query date
select @query=EOMONTH('2020-02-03') end_of_Month_DAY_2020;
  
  return @query
END;
SELECT 
    EOMONTH('2019-02-15') end_of_month_feb2019;

	step-7
	SELECT dbo.CalculateEndDate(SYSDATETIME());
SELECT dbo.CalculateEndDate('2018-03-01');


step-8
DROP FUNCTION dbo.CalculateEndDate;

