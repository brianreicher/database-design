-- Functions in attribute lists
SELECT OrderID, ProductID,
       (UnitPrice * Quantity) as Cost
FROM OrderDetails;

SELECT CompanyName, ContactName,ContactTitle, Phone
FROM Customers;

SELECT ProductName as Name,
       UnitsInStock as StockLevels
FROM Products;

SELECT ProductName
FROM Products
WHERE SupplierID=12 and UnitPrice>25;


SELECT FirstName, LastName
FROM Employees
WHERE Title='Sales Representative' and City='London';