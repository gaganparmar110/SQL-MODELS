use AdventureWorks;


step-2
CREATE PROCEDURE Production.GetProductColors
AS
SET NOCOUNT ON;
BEGIN
	SELECT DISTINCT Production.Product.Color
	FROM Production.Product 
	WHERE Production.Product.Color IS NOT NULL
	ORDER BY Production.Product.Color;
END

step-3
EXEC Production.GetProductColors;

step-4
use MarketDev;
alter PROCEDURE Reports.GetProductsAndModels
AS
SET NOCOUNT ON;
BEGIN
	SELECT p.ProductID,p.ProductName,p.ProductNumber,p.SellStartDate,p.SellEndDate,p.Color,pm.ProductModelID,
		   COALESCE(ed.Description,id.Description,p.ProductName) AS EnglishDescription,
		   COALESCE(fd.Description,id.Description,p.ProductName) AS FrenchDescription,
		   COALESCE(cd.Description,id.Description,p.ProductName) AS ChineseDescription
	FROM Marketing.Product AS p
	LEFT OUTER JOIN Marketing.ProductModel AS pm ON p.ProductModelID = pm.ProductModelID

	LEFT OUTER JOIN Marketing.ProductDescription AS ed	ON pm.ProductModelID = ed.ProductModelID 
	AND ed.LanguageID = 'en'

	LEFT OUTER JOIN Marketing.ProductDescription AS fd	ON pm.ProductModelID = fd.ProductModelID 
	AND fd.LanguageID = 'fr'

	LEFT OUTER JOIN Marketing.ProductDescription AS cd	ON pm.ProductModelID = cd.ProductModelID 
	AND cd.LanguageID = 'zh-cht'

	LEFT OUTER JOIN Marketing.ProductDescription AS id	ON pm.ProductModelID = id.ProductModelID 
	AND id.LanguageID = 'invarient'

	ORDER BY p.ProductID,pm.ProductModelID;
END

step-5
exec Reports.GetProductsAndModels;


