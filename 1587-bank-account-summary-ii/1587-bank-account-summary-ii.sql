SELECT NAME, SUM(amount) AS BALANCE
FROM users u
JOIN Transactions t
ON u.account = t.account
GROUP BY NAME, t.account
HAVING BALANCE > 10000