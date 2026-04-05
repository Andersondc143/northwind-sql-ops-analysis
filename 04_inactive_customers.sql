-- Query 4: Which customers have been inactive for 6+ months?
-- Dataset: Northwind | Tool: SQLiteOnline.com

SELECT 
    Customers.CompanyName AS Customer,
    Customers.Country,
    MAX(Orders.OrderDate) AS LastOrderDate
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID
HAVING MAX(Orders.OrderDate) < DATE('now', '-6 months')
ORDER BY LastOrderDate ASC;
