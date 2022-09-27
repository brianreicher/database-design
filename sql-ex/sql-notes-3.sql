-- Nested queries

SELECT CustomerID
FROM Orders
WHERE OrderDate = (
    SELECT max(OrderDate) FROM Orders);

-- Scalar subquery, nested/inner query that returns a single value
-- Multi row subquery, returns a set of rows with 1 or more columns
-- Correlated subquery, references a value from the outer query (will be run once for every tuple in the outer query

SELECT ProductName
FROM Products
WHERE ProductID in (SELECT ProductID FROM OrderDetails
                    WHERE  OrderID in (SELECT OrderID FROM Orders WHERE EmployeeID in (
                        SELECT EmployeeID FROM Employees WHERE LastName = 'Leverling' and FirstName ='Janet')));


SELECT emp.FirstName as EmployeeFirstName, emp.LastName as EmployeeLastName,
       mgr.FirstName as ManagerFirstName, mgr.LastName as ManagerLastName
FROM Employees emp JOIN Employees mgr ON mgr.EmployeeID = emp.ReportsTo;