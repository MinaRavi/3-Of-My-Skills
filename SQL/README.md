![baner sql](https://github.com/user-attachments/assets/5f93b827-992f-4ae5-a25c-528e9d2a61b6)
# Global Superstore - SQL Queries for Business Insights
This repository contains a set of SQL queries designed to extract business insights from the **[Global Superstore](https://www.kaggle.com/datasets/apoorvaappz/global-super-store-dataset)** dataset.

## File Structure
- **`answering-business-questions.sql`**: The queries focus on answering key business questions, such as identifying top products, customers, and regions, as well as analyzing sales trends, profits, and discounts.

## Queries Included

### 1. **Top 10 Products by Sales**
This query identifies the top 10 products based on total sales, helping you understand which products generate the most revenue.

```sql
SELECT `Product Name`, 
    SUM(Sales) AS TotalSales
FROM global_superstore
GROUP BY `Product Name`
ORDER BY TotalSales DESC
LIMIT 10;
```

### 2. Region-Wise Total Sales and Profit
This query summarizes sales and profit by region, giving a clear view of regional performance.

```sql
SELECT Region, 
    SUM(Sales) AS TotalSales, 
    SUM(Profit) AS TotalProfit
FROM global_superstore
GROUP BY Region
ORDER BY TotalSales DESC;
```

### 3. Top 5 Customers by Profit
This query identifies the top 5 customers who generate the most profit, which helps in understanding high-value customers.

```sql
SELECT `Customer Name`,
    SUM(Sales) AS TotalSales, 
    SUM(Profit) AS TotalProfit
FROM global_superstore
GROUP BY `Customer Name`
ORDER BY TotalProfit DESC
LIMIT 5;
```
### 4. Products with Negative Profit
This query finds products that have a negative profit, helping to identify loss-making products.

```sql
SELECT `Product Name`, 
    SUM(Sales) AS TotalSales, 
    SUM(Profit) AS TotalProfit
FROM global_superstore
GROUP BY `Product Name`
HAVING TotalProfit < 0 
ORDER BY TotalProfit ASC;
```

### 5. Monthly Sales Trends
This query shows the total sales for each month, providing a view of sales performance over time.

```sql
SELECT 
    DATE_FORMAT(`Order Date`, '%Y-%m') AS Month, 
    SUM(Sales) AS TotalSales
FROM global_superstore
GROUP BY DATE_FORMAT(`Order Date`, '%Y-%m')
ORDER BY Month ASC;
```

### 6. Top 5 Regions with Highest Discount Usage
This query identifies the top 5 regions with the highest average discount usage, helping to analyze discount strategy.

```sql
SELECT Region, 
    AVG(Discount) AS AverageDiscount
FROM global_superstore
GROUP BY Region
ORDER BY AverageDiscount DESC
LIMIT 5;
```
### 7. Order Count by Shipping Mode
This query shows the count of orders by shipping mode, providing insights into shipping preferences.

```sql
SELECT `Ship Mode`, 
    COUNT(*) AS OrderCount
FROM global_superstore
GROUP BY `Ship Mode`
ORDER BY OrderCount DESC;
```

### 8. Category-Wise Sales and Profit
This query summarizes sales and profit by product category, helping to understand the performance of different categories.

```sql
SELECT Category, 
    SUM(Sales) AS TotalSales, 
    SUM(Profit) AS TotalProfit
FROM global_superstore
GROUP BY Category
ORDER BY TotalSales DESC;
```

### 9. Customer Segments with Most Orders
This query counts the number of orders per customer segment, which helps in identifying the most active customer segments.

```sql
SELECT Segment, 
    COUNT(*) AS OrderCount
FROM global_superstore
GROUP BY Segment
ORDER BY OrderCount DESC;
```
