\c live024

DROP VIEW IF EXISTS customers_summary;

CREATE OR REPLACE VIEW customers_summary AS 
SELECT 
    customer_id,
    SUM(amount) AS total_revenue, 
    COUNT(*) AS total_sales,
    MAX(amount) AS max_order,
    MIN(amount) AS min_order,
    ROUND(AVG(amount), 2) AS average_ticket
FROM orders
GROUP BY customer_id
ORDER BY customer_id
;

SELECT * FROM customers_summary;

SELECT * FROM pg_views WHERE viewname = 'customers_summary';