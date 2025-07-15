\c live024

SELECT id, CONCAT(first_name, ' ', last_name) AS "fullName"
FROM customers;

SELECT COUNT(DISTINCT email) AS total_of_customers FROM customers;

SELECT 
    customer_id,
    SUM(amount) AS total_revenue, 
    COUNT(*) AS total_sales,
    MAX(amount) AS max_order,
    MIN(amount) AS min_order,
    ROUND(AVG(amount), 2) AS average_ticket
FROM orders
GROUP BY customer_id
HAVING SUM(amount) > 500
;