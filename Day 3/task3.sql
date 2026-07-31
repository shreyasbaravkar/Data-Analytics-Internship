CREATE TABLE ecommerce_data (
    Order_Date DATE,
    Time TIME,
    Aging NUMERIC,
    Customer_Id INT,
    Gender VARCHAR(20),
    Device_Type VARCHAR(50),
    Customer_Login_type VARCHAR(50),
    Product_Category VARCHAR(100),
    Product VARCHAR(100),
    Sales NUMERIC,
    Quantity NUMERIC,
    Discount NUMERIC,
    Profit NUMERIC,
    Shipping_Cost NUMERIC,
    Order_Priority VARCHAR(20),
    Payment_method VARCHAR(50)
);

--Query 1: Display all records
SELECT * FROM ecommerce_data;

--Query 2: Display products with sales greater than 200
SELECT * FROM ecommerce_data WHERE Sales > 200;

--Query 3 : Sort all prodcuts by sales in descending order 
SELECT* FROM ecommerce_data ORDER BY Sales DESC;

--Query 4: Total Sales by Product Category
SELECT Product_category,
SUM(Sales) AS Total_Sales
FROM ecommerce_data
GROUP BY Product_Category
ORDER BY Total_Sales DESC;

--Query 5 : Avergae Profit by Product Category
SELECT Product_Category,AVG(profit)AS Average_profit
FROM ecommerce_data
GROUP BY Product_Category
ORDER BY Average_Profit DESC;

--Query 6 : Number of Orders by Payment Method
SELECT Payment_method,
COUNT(*) AS Total_Orders
FROM ecommerce_data
GROUP BY Payment_method
ORDER BY Total_Orders DESC;

--Query 7: Prodcuts with sales greater than the average sales
SELECT *
FROM ecommerce_data
WHERE Sales > (
SELECT AVG(sales)
FROM ecommerce_data
);

--Query 8: Create a view for high sales orders
CREATE VIEW High_Sales_Orders AS
SELECT* FROM ecommerce_data WHERE Sales >200;
-- To view
SELECT * FROM High_Sales_Orders;

--Query 9: Create an index on Customer_ID
CREATE INDEX idx_customer_id
ON ecommerce_data(Customer_ID);
--To view
SELECT indexname,indexdef
FROM pg_indexes
WHERE tablename = 'ecommerce_data';
