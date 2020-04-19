step-1
USE AdventureWorks


step-2
CREATE TABLE production.product_audits(
    product_id INT NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    brand_id INT NOT NULL,
    category_id INT NOT NULL,
    model_year SMALLINT NOT NULL,
	ModifyingUser nvarchar(100) NOT NULL,
    Original_list_price DEC(10,2) NOT NULL,
	New_List_Price DEC(10,2) NOT NULL,
   UpdateTime DATETIME NOT NULL,
 );
 drop table production.product_audits;
 
step-3
alter TRIGGER Production.TR_ProductListPrice_Update
ON Production.Product
AFTER UPDATE
AS BEGIN
	SET NOCOUNT ON;
	INSERT production.product_audits(product_id,product_name, brand_id,category_id, model_year ,ModifyingUser, Original_list_price,New_List_Price, UpdateTime)
	SELECT Inserted.ProductID,Inserted.Name,211,102,20014,ORIGINAL_LOGIN(),deleted.ListPrice, inserted.ListPrice,SYSDATETIME()
	FROM deleted
	INNER JOIN inserted
	ON deleted.ProductID  = inserted.ProductID 
	WHERE deleted.ListPrice > 1000 OR inserted.ListPrice > 1000;
END;


UPDATE Production.Product SET ListPrice=2000.00 WHERE ProductID=749;



SELECT * FROM production.product_audits
