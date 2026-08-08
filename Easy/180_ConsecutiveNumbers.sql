-- Find all numbers that appear at least three times consecutively.

-- Return the result table in any order.

-- The result format is in the following example.


Select distinct (l1.num) as ConsecutiveNums from Logs l1 JOIN Logs l2 ON l1.id + 1 = l2.id 
JOIN Logs l3 ON l2.id + 1 = l3.id

WHERE l1.num = l2.num AND l2.num = l3.num