-- iPhone Sales Analytics
-- MySQL business analysis queries

CREATE DATABASE IF NOT EXISTS iphone_sales_db;
USE iphone_sales_db;

CREATE TABLE IF NOT EXISTS iphone_sales (
    Order_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Country VARCHAR(50),
    iPhone_Model VARCHAR(50),
    Storage VARCHAR(20),
    Color VARCHAR(30),
    Quantity INT,
    Price DECIMAL(10,2),
    Sales_Date DATE,
    Payment_Method VARCHAR(50)
);

-- Overall sales performance
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders,
       SUM(Quantity) AS Total_Units,
       SUM(Price) AS Total_Sales,
       ROUND(AVG(Price),2) AS Average_Order_Value
FROM iphone_sales;

-- Sales by iPhone model
SELECT iPhone_Model, SUM(Price) AS Total_Sales
FROM iphone_sales
GROUP BY iPhone_Model
ORDER BY Total_Sales DESC;

-- Sales by country
SELECT Country, SUM(Price) AS Total_Sales
FROM iphone_sales
GROUP BY Country
ORDER BY Total_Sales DESC;

-- Sales by storage
SELECT Storage,
       SUM(Price) AS Total_Sales,
       COUNT(DISTINCT Order_ID) AS Total_Orders,
       SUM(Quantity) AS Total_Units
FROM iphone_sales
GROUP BY Storage
ORDER BY Total_Sales DESC;

-- Sales by model and storage
SELECT iPhone_Model, Storage, SUM(Price) AS Total_Sales
FROM iphone_sales
GROUP BY iPhone_Model, Storage
ORDER BY Total_Sales DESC;

-- Units by model and storage
SELECT iPhone_Model, Storage, SUM(Quantity) AS Total_Units
FROM iphone_sales
GROUP BY iPhone_Model, Storage
ORDER BY Total_Units DESC;

-- Monthly sales trend
SELECT MONTH(Sales_Date) AS Month_Number,
       MONTHNAME(Sales_Date) AS Month_Name,
       SUM(Price) AS Total_Sales
FROM iphone_sales
GROUP BY MONTH(Sales_Date), MONTHNAME(Sales_Date)
ORDER BY Month_Number;

-- Payment method analysis
SELECT Payment_Method,
       COUNT(DISTINCT Order_ID) AS Total_Orders,
       SUM(Price) AS Total_Sales
FROM iphone_sales
GROUP BY Payment_Method
ORDER BY Total_Sales DESC;

-- Sales by color
SELECT Color, SUM(Price) AS Total_Sales
FROM iphone_sales
GROUP BY Color
ORDER BY Total_Sales DESC;

-- Orders by quantity
SELECT Quantity,
       COUNT(DISTINCT Order_ID) AS Total_Orders,
       SUM(Price) AS Total_Sales,
       ROUND(AVG(Price),2) AS Average_Order_Value
FROM iphone_sales
GROUP BY Quantity
ORDER BY Quantity;

-- Top customer/order records
SELECT Customer_Name, Country, iPhone_Model, Storage,
       Quantity, Price, Sales_Date, Payment_Method
FROM iphone_sales
ORDER BY Price DESC
LIMIT 10;

-- Model ranking and sales share
WITH model_sales AS (
    SELECT iPhone_Model, SUM(Price) AS Total_Sales
    FROM iphone_sales
    GROUP BY iPhone_Model
)
SELECT iPhone_Model,
       Total_Sales,
       RANK() OVER (ORDER BY Total_Sales DESC) AS Sales_Rank,
       ROUND(Total_Sales / SUM(Total_Sales) OVER () * 100, 2)
           AS Sales_Share_Percent
FROM model_sales
ORDER BY Sales_Rank;

-- NOTE: Price is treated as the transaction/order-level sales value.
-- Do not multiply Price by Quantity unless the source confirms Price is unit price.
