# Task 6 - Sales Trend Analysis Using Aggregations (PostgreSQL)

## Objective
Analyze monthly sales trends using SQL aggregation functions.

## Tools Used
- PostgreSQL
- pgAdmin 4

## Dataset
Online Sales Data

## Table Structure
The dataset contains the following columns:

- transaction_id
- order_date
- product_category
- product_name
- units_sold
- unit_price
- total_revenue
- region
- payment_method

## SQL Concepts Used
- SELECT
- SUM()
- COUNT(DISTINCT)
- EXTRACT()
- GROUP BY
- ORDER BY

## SQL Query

```sql
SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales_new
GROUP BY
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY
    year,
    month;
```

## Output
The query generates a monthly sales report showing:

- Year
- Month
- Total Revenue
- Order Volume

## Key Learnings

- Importing CSV files into PostgreSQL
- Using aggregate functions for business analysis
- Extracting year and month from date fields
- Grouping records using GROUP BY
- Sorting results with ORDER BY
- Calculating monthly revenue and order counts

## Project Structure

```
Task6_Sales_Trend_Analysis/
│── sales_trend.sql
│── Online Sales Data.csv
└── README.md
```

## Conclusion

This project demonstrates how SQL aggregation functions can be used to analyze sales performance over time. By grouping transactions by month and year, businesses can identify revenue trends, monitor order volumes, and support data-driven decision-making.