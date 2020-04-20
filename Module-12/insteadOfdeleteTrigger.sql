
use SqlAssignment

CREATE TRIGGER TR_Product_Price_Delete
ON dbo.Products
INSTEAD OF DELETE 
AS
BEGIN
  SET NOCOUNT ON;
  UPDATE p
  SET p.price = 0
  FROM dbo.Products AS p
  INNER JOIN deleted AS d
  ON p.productid = d.productid;
END;
GO

select * from dbo.Products;

DELETE dbo.Products
WHERE productid = 1;
GO