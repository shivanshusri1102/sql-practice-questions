WITH daily AS (
    SELECT 
        visited_on,
        SUM(amount) AS total_amount
    FROM Customer
    GROUP BY visited_on
)

SELECT 
    visited_on,
    SUM(total_amount) OVER (
        ORDER BY visited_on
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS amount,
    
    ROUND(
        SUM(total_amount) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) / 7, 2
    ) AS average_amount

FROM daily
LIMIT 6, 100000;