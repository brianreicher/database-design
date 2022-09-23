-- 1
SELECT distinct ShipCity
FROM Employees NATURAL JOIN Orders
WHERE FirstName = 'Michael' AND LastName = 'Suyama' AND
      ShipCountry in ('Ireland', 'Poland');

-- 2a
SELECT ProductName
FROM Suppliers NATURAL JOIN Products
WHERE Country='Germany';

-- 2b
SELECT ProductName
FROM Suppliers NATURAL JOIN Products
WHERE Country='Germany' AND UnitsOnOrder>0 AND UnitsInStock=0;
-- WHERE Country='Germany' AND UnitsOnOrder>UnitsInStock;

-- 3
SELECT distinct CompanyName
FROM Categories NATURAL JOIN Products NATURAL JOIN Suppliers
WHERE CategoryName='Confections';

