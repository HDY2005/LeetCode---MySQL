-- Initially, all products have price 10.

-- Write a solution to find the prices of all products on the date 2019-08-16.

-- Return the result table in any order.

-- The result format is in the following example.

 

SELECT
    DISTINCT product_id,
    IFNULL(
        (
            SELECT new_price
            FROM Products p2
            WHERE p2.product_id = p1.product_id
              AND p2.change_date <= '2019-08-16'
            ORDER BY change_date DESC
            LIMIT 1
        ),
        10
    ) AS price
FROM Products p1;