-- 1. Create and select the database
CREATE DATABASE sales_portfolio;
USE sales_portfolio;

-- 2. Create the table structure to handle the cleaned dataset
CREATE TABLE sales_project (
    Product_ID INT,
    Sale_Date DATE,
    Sales_Rep VARCHAR(50),
    Region VARCHAR(50),
    Sales_Amount DECIMAL(10,2),
    Quantity_Sold INT,
    Product_Category VARCHAR(50),
    Unit_Cost DECIMAL(10,2),
    Unit_Price DECIMAL(10,2),
    Customer_Type VARCHAR(50),
    Discount DECIMAL(4,2),
    Payment_Method VARCHAR(50),
    Sales_Channel VARCHAR(50),
    Region_and_Sales_Rep VARCHAR(100),
    Calculated_Revenue DECIMAL(12,4),
    Total_Cost DECIMAL(12,2),
    Profit DECIMAL(12,4),
    Profit_Margin DECIMAL(12,10),
    Month VARCHAR(20),
    Quarter VARCHAR(10),
    Base_Margin_Pct VARCHAR(10),
    Discount_Issue_Flag VARCHAR(5)
);

-- 3. Advanced Regional Ranking via Window Functions
-- This query evaluates regional sales rep performance based on total profitability
SELECT 
    Region,
    Sales_Rep,
    SUM(Profit) as Total_Profit,
    RANK() OVER(PARTITION BY Region ORDER BY SUM(Profit) DESC) as Regional_Rank
FROM sales_project
GROUP BY Region, Sales_Rep
ORDER BY Region, Regional_Rank;