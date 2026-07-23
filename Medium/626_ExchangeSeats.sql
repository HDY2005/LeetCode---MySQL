-- Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.

-- Return the result table ordered by id in ascending order.

select 
CASE 
    WHEN id%2 = 1 AND id != (SELECT Max(id) FROM Seat) THEN id+1
    WHEN id%2 = 0 THEN id-1
    ELSE id

END as id, student from Seat 
ORDER by id ASC