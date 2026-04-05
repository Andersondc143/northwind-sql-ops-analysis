-- Query 1: Which product category generated the most revenue?
-- Dataset: Northwind | Tool: SQLiteOnline.com

SELECT 
    Categories.CategoryName,
    ROUND(SUM([Order Details].UnitPrice * [Order Details].Quantity), 2) AS TotalRevenue
FROM [Order Details]
JOIN Products ON [Order Details].ProductID = Products.ProductID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName
ORDER BY TotalRevenue DESC;
