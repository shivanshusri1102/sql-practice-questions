SELECT p.product_name, SUM(o.unit) AS unit
FROM Products p
JOIN Orders o
ON p.product_id = o.product_id
WHERE o.order_date LIKE '2020-02-%'
GROUP BY p.product_name
HAVING unit >= 100;



-- SELECT p.product_name, SUM(o.unit) OVER (ORDER BY p.product_id) AS unit
-- FROM Products p
-- JOIN Orders o
-- ON p.product_id = o.product_id
-- WHERE MONTH(o.order_date) = 2
--     AND YEAR(o.order_date) = 2026;