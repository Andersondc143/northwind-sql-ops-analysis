-- Query 3: Which shipper has the fastest average fulfillment time?
-- Dataset: Northwind | Tool: SQLiteOnline.com

SELECT 
    Shippers.CompanyName AS Shipper,
    ROUND(AVG(JULIANDAY(Orders.ShippedDate) - JULIANDAY(Orders.OrderDate)), 1) AS AvgDaysToShip,
    COUNT(Orders.OrderID) AS TotalOrders
FROM Orders
JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID
WHERE Orders.ShippedDate IS NOT NULL
GROUP BY Shippers.ShipperID
ORDER BY AvgDaysToShip ASC;
