-- Write a solution to display the records with three or more rows with consecutive id's, and the number of people is greater than or equal to 100 for each.

-- Return the result table ordered by visit_date in ascending order.

SELECT id, visit_date, people FROM (
    SELECT *,
           id - ROW_NUMBER() OVER (ORDER BY id) AS grp
    FROM Stadium
    WHERE people >= 100
) t
WHERE grp IN ( SELECT grp FROM (
        SELECT id - ROW_NUMBER() OVER (ORDER BY id) AS grp
        FROM Stadium
        WHERE people >= 100
    ) x
    GROUP BY grp
    HAVING COUNT(*) >= 3
)
ORDER BY visit_date ASC