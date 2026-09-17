-- Step 1: Creating  Database.
CREATE DATABASE ecommerce;

-- Step 2: Checking Table
USE ecommerce;
show tables; 
DESCRIBE `order`;
SELECT * FROM `order`; 

 
-- Step 3 Total Orders
SELECT COUNT(*) AS total_order
FROM `order`;
    

-- Step 4: Total Sales
SELECT 
    SUM(Net_amount) AS Total_sales
FROM
    `order`;
    

--  Step 5: Top Products
SELECT 
    product, SUM(net_amount) AS sales
FROM `order`
GROUP BY product
ORDER BY sales DESC;

-- Step 6: Top Cites
SELECT 
    city, SUM(net_amount) AS sales
FROM `order`
GROUP BY city
ORDER BY sales DESC;

-- Step 7: Monthly Sales
SELECT 
    month, SUM(net_amount) AS sales
FROM `order`
GROUP BY month;


-- Step 8: Highest Profit Products
SELECT 
    product, SUM(Profit) AS profit
FROM `order`
GROUP BY product
ORDER BY profit DESC;


-- Step 8: Payment mode distribution
select payment_mode,
count(*) as total_orders
from `order` 
group by Payment_mode; 

-- Step 9: Canelled orders
SELECT *
FROM `order`
WHERE order_status = 'Cancelled';