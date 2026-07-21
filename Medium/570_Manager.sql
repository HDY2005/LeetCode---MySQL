-- Write a solution to find managers with at least five direct reports.

-- Return the result table in any order.

select e.name from Employee e JOIN Employee m ON e.Id = m.managerId
group by m.managerId
having count(*) >= 5