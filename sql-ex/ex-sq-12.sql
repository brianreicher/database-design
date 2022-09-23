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
WHERE Country='Germany' AND UnitsOnOrder>0;

-- 3
SELECT CompanyName
FROM Suppliers NATURAL JOIN Categories
WHERE CategoryName='Confections';

