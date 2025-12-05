/*
======================  Cumulative Analysis  ======================

Purpose:
    - Calculate running totals or moving averages for key metrics.
    - Track performance over time in a cumulative manner.
    - Identify long-term trends or measure gradual growth.

Key SQL Functions:
    - Window Functions: SUM() OVER(), AVG() OVER()

==================================================================
*/

-- Calculate the running total of sales over time and the moving average price 
SELECT 
    order_date,
    total_sales,
    SUM(total_sales) OVER(ORDER BY order_date) running_total_sales,
    AVG(avg_price) OVER(ORDER BY order_date) AS moving_average_price
FROM
(
SELECT 
    DATETRUNC(MONTH,order_date) AS order_date,
    SUM(sales_amount) AS total_sales,
    AVG(price) AS avg_price
FROM 
gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(MONTH,order_date)
)t
