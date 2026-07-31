-- Write a solution to calculate the bonus of each employee. The bonus of an employee is 100% of their salary if the ID of the employee is an odd number and the employee's name does not start with the character 'M'. The bonus of an employee is 0 otherwise.

-- Return the result table ordered by employee_id.

select employee_id,
    (IF(employee_id %2 != 0 AND name NOT LIKE 'M%', salary , 0)
) as bonus 
FROM Employees
order by employee_id