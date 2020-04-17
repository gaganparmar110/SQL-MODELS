alter FUNCTION dbo.hgf(@message varchar(40))
RETURNS int
AS
begin

declare   @i int=0
Select @i=len(@message)-Len(replace(replace(replace(replace(replace(@message,'a',''),'e',''),'i',''),'o',''),'u','') )
return @i
end
GO

select dbo.hgf('krati')