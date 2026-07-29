-- Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.

-- Return the result table ordered by user_id.

-- The result format is in the following example.


SELECT user_id,  CONCAT(
UPPER(LEFT(name,1)),LOWER(SUBSTRING(name,2))
) as name
FROM Users