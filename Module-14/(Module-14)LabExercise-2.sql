use SqlAssignment;

step-2
CREATE TABLE ProductInvoices
( ProductInvoiceID int,
  SalesDate datetime,
  CustomerID int,
  ItemList xml);
GO

step-3
--Use implicit casting to assign an xml variable
DECLARE @ProductString nvarchar(2000);
SET @ProductString = '<Items>
                     <Item ProductID="2" Quantity="3"/>
                     <Item ProductID="4" Quantity="1"/>
                   </Items>';

DECLARE @ProductDoc xml;
SET @ProductDoc = @ProductString;

INSERT INTO ProductInvoices VALUES (1, GetDate(), 2, @ProductDoc);
go


SELECT * FROM ProductInvoices;
GO

step-4
-- Use implicit casting to assign a string constant
INSERT INTO ProductInvoices
VALUES
(2, GetDate(), 3, '<Items>
                     <Item ProductID="3" Quantity="4"/>
                     <Item ProductID="5" Quantity="2"/>
                   </Items>');

SELECT * FROM ProductInvoices;
GO

step-5
DROP TABLE dbo.ProductInvoices;
GO