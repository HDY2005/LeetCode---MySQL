--A single number is a number that appeared only once in the MyNumbers table.

-- Find the largest single number. If there is no single number, report null.

-- The result format is in the following example.

 

SELECT IFNULL(max(num), null) as num 
FROM (Select num from MyNumbers 
GROUP BY num
HAVING count(num) = 1
) a