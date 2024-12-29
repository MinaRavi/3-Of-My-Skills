
-- Top 10 Products by Sales
SELECT `Product Name`, 
	SUM(Sales) AS TotalSales
FROM global_superstore
GROUP BY `Product Name`
ORDER BY TotalSales DESC
LIMIT 10;



-- Region-Wise Total Sales and Profit
SELECT Region, 
    SUM(Sales) AS TotalSales, 
    SUM(Profit) AS TotalProfit
FROM global_superstore
GROUP BY Region
ORDER BY TotalSales DESC;



-- Top 5 Customers by Profit
SELECT `Customer Name`,
	SUM(Sales) AS TotalSales, 
    SUM(Profit) AS TotalProfit
FROM global_superstore
GROUP BY `Customer Name`
ORDER BY TotalProfit DESC
LIMIT 5;



-- Products with Negative Profit
SELECT `Product Name`, 
    SUM(Sales) AS TotalSales, 
    SUM(Profit) AS TotalProfit
FROM global_superstore
GROUP BY `Product Name`
HAVING TotalProfit < 0 
ORDER BY TotalProfit ASC;



-- Monthly Sales Trends
SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS Month, 
    SUM(Sales) AS TotalSales
FROM global_superstore
GROUP BY DATE_FORMAT(`Order Date`, '%Y-%m')
ORDER BY Month ASC;



-- Top 5 Regions with Highest Discount Usage
SELECT Region, 
    AVG(Discount) AS AverageDiscount
FROM global_superstore
GROUP BY Region
ORDER BY AverageDiscount DESC
LIMIT 5;



-- Order Count by Shipping Mode
SELECT `Ship Mode`, 
    COUNT(*) AS OrderCount
FROM global_superstore
GROUP BY `Ship Mode`
ORDER BY OrderCount DESC;



-- Category-Wise Sales and Profit
SELECT Category, 
    SUM(Sales) AS TotalSales, 
    SUM(Profit) AS TotalProfit
FROM global_superstore
GROUP BY Category
ORDER BY TotalSales DESC;



-- Customer Segments with Most Orders
SELECT Segment, 
    COUNT(*) AS OrderCount
FROM global_superstore
GROUP BY Segment
ORDER BY OrderCount DESC;