-- Write a solution to report the distance traveled by each user.

-- Return the result table ordered by travelled_distance in descending order, if two or more users traveled the same distance, order them by their name in ascending order.

SELECT name,
IFNULL(SUM(distance), 0) as travelled_distance from Users u LEFT JOIN Rides r ON u.id = r.user_id
GROUP BY user_id
ORDER BY travelled_distance DESC, name ASC