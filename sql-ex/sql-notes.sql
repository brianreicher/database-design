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

-- ORDER BY, default is ascending (ASC, DESC)
SELECT ProductName, UnitPrice, UnitsOnOrder
FROM Products
WHERE UnitsOnOrder > 0
ORDER BY ProductName;

SELECT CompanyName, City, Country, Region
FROM Customers
ORDER BY Region, CompanyName;

-- Unions
SELECT City
FROM Employees
WHERE Region = 'Western Europe'
UNION ALL
-- Includes duplicates
SELECT City
FROM Customers
WHERE Region = 'Western Europe';

-- Intersections
SELECT City
FROM Employees
WHERE Country = 'USA'
INTERSECT -- No 'ALL' version, can use EXCEPT (set difference)
SELECT City
FROM Customers
WHERE Country = 'USA';

-- Simple Joins (theta join)
-- SELECT <list of columns>
-- FROM <table name> JOIN <table name>
--   ON <condition>
-- [WHERE <condition list>]
-- [ORDER BY <column-order list>];
SELECT ProductName, CategoryName
FROM Products JOIN Categories
    ON Categories.CategoryID = Products.CategoryID;

-- Natural Join, joins attributes on with the same names, adds an implicit ON clause
SELECT ProductName, CategoryName
FROM Products NATURAL JOIN Categories;
-- If no shared attributes, returns cartesian product

-- Soft join - uses FROM/WHERE to filter rows and tables (gets messy)
SELECT ProductName, CategoryName
FROM Products, Categories
WHERE Products.CategoryID = Categories.CategoryID;

-- Single quotes for string literals ' ', double quotes for identifiers with spaces
-- SELECT distinct for unique select values