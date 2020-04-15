use AdventureWorks;

step-2
SELECT * FROM Production.Product;
Create PROCEDURE Production.GetBlueProducts
AS
SET NOCOUNT ON;
BEGIN
  SELECT p.ProductID,p.Name,p.ListPrice FROM Production.Product AS p
  WHERE p.Color = 'Blue'
  ORDER BY p.ProductID;
END;

step-3
EXEC Production.GetBlueProducts;

step-4
CREATE PROCEDURE Production.GetBlueProductsAndModels
AS
SET NOCOUNT ON;
BEGIN
  SELECT p.ProductID,p.Name,p.Size,p.ListPrice FROM Production.Product AS p
  WHERE p.Color = 'Blue'
  ORDER BY p.ProductID;
  
  SELECT p.ProductID,pm.ProductModelID,pm.Name AS ModelName FROM Production.Product AS p
  INNER JOIN Production.ProductModel AS pm
  ON p.ProductModelID = pm.ProductModelID 
  ORDER BY p.ProductID, pm.ProductModelID;
END;

step-5
exec Production.GetBlueProductsAndModels;
step-6
alter PROCEDURE Production.GetBlueProductsAndModels
AS
SET NOCOUNT ON;
BEGIN
  SELECT p.ProductID,p.Name,p.Size,p.ListPrice FROM Production.Product AS p
  WHERE p.Color = 'Blue'
  ORDER BY p.ProductID;
  
  SELECT p.ProductID,pm.ProductModelID,pm.Name AS ModelName FROM Production.Product AS p
  INNER JOIN Production.ProductModel AS pm
  ON p.ProductModelID = pm.ProductModelID 
    WHERE p.Color = 'Blue'
  ORDER BY p.ProductID, pm.ProductModelID;
END;

step-7
EXEC Production.GetBlueProductsAndModels;

step-8
  SELECT SCHEMA_NAME(schema_id) AS SchemaName,
       name AS ProcedureName
  FROM sys.procedures;