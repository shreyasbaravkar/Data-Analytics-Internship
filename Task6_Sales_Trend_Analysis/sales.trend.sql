DROP TABLE IF EXISTS online_sales;

CREATE TABLE online_sales (
    transaction_id INT,
    order_date DATE,
    product_category VARCHAR(100),
    product_name VARCHAR(200),
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_revenue DECIMAL(10,2),
    region VARCHAR(100),
    payment_method VARCHAR(100)
);

--Verifying if the data was imported or not 
SELECT * FROM online_sales  
LIMIT 10;

--Monthly Sales Trend Query
SELECT
EXTRACT (YEAR FROM order_date) AS year,
EXTRACT (MONTH FROM order_date) AS month,
SUM (total_revenue) AS total_revenue,
COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
GROUP BY 
EXTRACT(YEAR FROM order_date),
EXTRACT(MONTH FROM order_date)
ORDER BY 
year,
month;



