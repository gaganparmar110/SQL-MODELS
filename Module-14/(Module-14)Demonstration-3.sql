step-1
use SqlAssignment;

step-2
-- Create a primary XML index
CREATE PRIMARY XML INDEX IX_Product_Details
ON dbo.Product (ProductDetails);
GO

step-3
-- Create a secondary VALUE index

CREATE XML INDEX IX_Product_Details_Value
ON dbo.Product (ProductDetails)
USING XML INDEX IX_Product_Details
FOR VALUE;
GO

step-4
-- Query the sys.xml_indexes system view

SELECT * FROM sys.xml_indexes;
GO

step-5
-- Drop and recreate the table without a primary key

DROP TABLE dbo.Product;
GO

CREATE TABLE dbo.Product
( ProductID int IDENTITY(1,1) ,
  ProductNumber varchar(50),
  ProductName varchar(50),
  ProductDetails xml (CONTENT dbo.ProductSchema)
);
GO

step-6
-- Now try to re-add the primary xml index. Note that this will fail.

CREATE PRIMARY XML INDEX IX_Product_Details
ON dbo.Product (ProductDetails);
GO