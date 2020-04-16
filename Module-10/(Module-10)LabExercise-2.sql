Use SqlAssignment;
Go

CREATE FUNCTION dbo.IntegerListToTable
( @InputList varchar(MAX),@Delimiter char(1) = ',')
RETURNS @OutputTable TABLE (PositionInList int IDENTITY(1, 1) NOT NULL,IntegerValue int)
AS BEGIN
		INSERT INTO @OutputTable (IntegerValue)
		SELECT Value FROM STRING_SPLIT ( @InputList , @Delimiter );
	RETURN;
END;
GO


SELECT * FROM 
dbo.IntegerListToTable('234,354253,3242,2',',');
GO

SELECT * FROM 
dbo.IntegerListToTable('234|354253|3242|2','|');
GO


********
alter function StringList()
returns varchar(100)
as begin
return (
select STRING_AGG(FirstName,'-') from JoinQuery.Employee)
end
Go

select dbo.StringList()
Go