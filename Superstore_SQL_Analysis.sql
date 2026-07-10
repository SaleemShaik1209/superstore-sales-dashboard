/*===========================================================
  SUPERSTORE SALES ANALYSIS USING MYSQL
  Project: Superstore Sales Analysis
  Author : Shaik Saleem
===========================================================*/

-- 1. Create Database
CREATE DATABASE IF NOT EXISTS superstore;

-- 2. Use Database
USE superstore;

-- ==========================================================
-- BASIC ANALYSIS
-- ==========================================================

-- 3. View all records
SELECT * FROM superstore_data;

-- 4. Total number of records
SELECT COUNT(*) AS Total_Records
FROM superstore_data;

-- 5. Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_data;

-- 6. Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore_data;

-- 7. Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity
FROM superstore_data;

-- 8. Average Sales
SELECT ROUND(AVG(Sales),2) AS Average_Sales
FROM superstore_data;

-- ==========================================================
-- REGION ANALYSIS
-- ==========================================================

-- 9. Sales by Region
SELECT Region,
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_data
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 10. Profit by Region
SELECT Region,
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore_data
GROUP BY Region
ORDER BY Total_Profit DESC;

-- ==========================================================
-- CATEGORY ANALYSIS
-- ==========================================================

-- 11. Sales by Category
SELECT Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_data
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 12. Profit by Category
SELECT Category,
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore_data
GROUP BY Category
ORDER BY Total_Profit DESC;

-- ==========================================================
-- SEGMENT ANALYSIS
-- ==========================================================

-- 13. Sales by Customer Segment
SELECT Segment,
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_data
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- ==========================================================
-- CITY ANALYSIS
-- ==========================================================

-- 14. Top 10 Cities by Sales
SELECT City,
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_data
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

-- ==========================================================
-- PRODUCT ANALYSIS
-- ==========================================================

-- 15. Top 10 Sub-Categories by Sales
SELECT `Sub-Category`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore_data
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 16. Top 10 Profitable Sub-Categories
SELECT `Sub-Category`,
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore_data
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC
LIMIT 10;

-- ==========================================================
-- DISCOUNT ANALYSIS
-- ==========================================================

-- 17. Average Discount by Category
SELECT Category,
ROUND(AVG(Discount),2) AS Avg_Discount
FROM superstore_data
GROUP BY Category;

-- ==========================================================
-- HIGH VALUE ORDERS
-- ==========================================================

-- 18. Orders Above ₹1000 Sales
SELECT *
FROM superstore_data
WHERE Sales > 1000
ORDER BY Sales DESC;

-- ==========================================================
-- LOSS MAKING ORDERS
-- ==========================================================

-- 19. Loss Making Orders
SELECT *
FROM superstore_data
WHERE Profit < 0;

-- ==========================================================
-- TOP 5 HIGHEST PROFIT ORDERS
-- ==========================================================

-- 20. Highest Profit Orders
SELECT *
FROM superstore_data
ORDER BY Profit DESC
LIMIT 5;

-- ==========================================================
-- PROJECT COMPLETED
-- ==========================================================