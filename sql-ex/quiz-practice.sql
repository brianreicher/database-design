SELECT COUNT(CompanyName) as NumberOfCustomers, Country
FROM Customers
WHERE Country in ('France', 'Germany', 'Belgium')
GROUP BY Country
ORDER BY Country;

SELECT SUM(UnitPrice*UnitsInStock) as ValueOfCurrentProductInventory
FROM Products;

SELECT cust.CompanyName
FROM Customers cust JOIN Orders O on cust.CustomerID = O.CustomerID
GROUP BY cust.CustomerID
HAVING COUNT(DISTINCT ShipCountry)>=20
ORDER BY CompanyName;

SELECT ProductID, ProductName, SupplierID, UnitsInStock
FROM Products
ORDER BY SupplierID, ProductID ASC;