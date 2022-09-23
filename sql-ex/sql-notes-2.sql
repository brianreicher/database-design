-- Single quotes for string literals ' ', double quotes for identifiers with spaces
-- SELECT distinct for unique select values

-- Inner & Outer join
-- Inner join only retains rows where the join condition is true
-- Outer join includes everything from the inner join and one or both of:
    -- All rows from the join's left operand table that don't match (left outer join)
    -- All rows from the join's right operand table that don't match (right outer join)

-- Process of queries
SELECT distinct o.OrderID, o.OrderDate, o.ShippedDate, c.CompanyName
FROM Shippers s JOIN Orders o ON o.ShipVia = s.ShipperID JOIN Customers c ON o.CustomerID = c.CustomerID
-- Can't natural join (columns with same name but different values)
WHERE ShippedDate>2022-01-01 AND s.CompanyName = 'Speedy Express';

-- Aggregate Functions
-- MAX, MIN, SUM, AVG, COUNT
-- Aggregate function is applied to every row in the result set
SELECT MAX(UnitPrice)
FROM Products;

SELECT COUNT(*)
FROM Products;

-- GROUP BY
-- Allows you to define subgroups for the application of an aggregate function
-- Should be a subset of SELECT attributes

-- Aggregate function queries
SELECT round(AVG(UnitPrice), 2) AS AvgUnitPrice
FROM Products;

SELECT round(AVG(UnitPrice), 2) AS AvgUnitPriceNonDiscont
FROM Products
    WHERE Discontinued = 0;

SELECT MIN(OrderDate) AS FirstOrderDate
FROM Orders;

SELECT COUNT(*) as numOrders
FROM Orders
    WHERE ShipName = 'Alfreds Futterkiste';
-- OR
SELECT Count(OrderID) as numOrders
FROM Orders NATURAL JOIN Customers
    WHERE CompanyName = 'Alfreds Futterkiste';


-- GROUP BY Queries
SELECT CompanyName, AVG(UnitPrice) as "AvgPrice"
FROM Products NATURAL JOIN Suppliers
    GROUP BY CompanyName;

SELECT CategoryName, ProductName, min(UnitPrice) as MinPrice, MAX(UnitPrice) as MaxPrice,
       AVG(UnitPrice) as AvgPrice
FROM Categories NATURAL JOIN Products
    GROUP BY CategoryName;

SELECT  EmployeeID, FirstName, LastName, COUNT(*) as NumOrders, MIN(OrderDate)
    as FirstOrder, MAX(OrderDate) as MostRecentOrder
FROM Employees NATURAL JOIN Orders
    GROUP BY EmployeeID;




