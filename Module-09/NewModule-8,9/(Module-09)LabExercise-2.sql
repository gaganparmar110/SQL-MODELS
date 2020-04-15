
use AdventureWorks;


step-2
create procedure Production.GetProductsByColor
@Color nvarchar(15)
AS
SET NOCOUNT ON;
BEGIN
	SELECT p.ProductID,p.Name,p.ListPrice AS Price,p.Color,p.Size,p.SizeUnitMeasureCode AS UnitOfMeasure
	FROM Production.Product AS p
	WHERE (p.Color = @Color) OR (p.Color IS NULL AND @Color IS NULL)
	ORDER BY Name;
END
GO

step-3
exec Production.GetProductsByColor 'blue';
GO

step-4
exec Production.GetProductsByColor NULL;
GO
