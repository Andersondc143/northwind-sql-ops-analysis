-- Query 2: Which employee processed the most orders?
-- Dataset: Northwind | Tool: SQLiteOnline.com

SELECT 
    Employees.FirstName || ' ' || Employees.LastName AS EmployeeName,
    COUNT(Orders.OrderID) AS TotalOrders
FROM Orders
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Employees.EmployeeID
ORDER BY TotalOrders DESC;
