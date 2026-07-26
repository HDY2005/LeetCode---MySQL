-- Write a solution to find for each user, the join date and the number of orders they made as a buyer in 2019.

-- Return the result table in any order.

-- The result format is in the following example.

SELECT
    u.user_id AS buyer_id,
    u.join_date,
    COUNT(o.order_id) AS orders_in_2019
FROM Users u
LEFT JOIN Orders o
ON u.user_id = o.buyer_id
AND o.order_date BETWEEN '2019-01-01' AND '2019-12-31'
GROUP BY u.user_id, u.join_date;