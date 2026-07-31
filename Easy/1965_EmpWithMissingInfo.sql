-- Write a solution to report the IDs of all the employees with missing information. The information of an employee is missing if:

-- The employee's name is missing, or
-- The employee's salary is missing.
-- Return the result table ordered by employee_id in ascending order.

Select s.employee_id from Salaries s LEFT JOIN Employees e ON s.employee_id = e.employee_id
where e.name IS NULL

UNION


Select e.employee_id from Employees e LEFT JOIN Salaries s ON e.employee_id = s.employee_id
where s.salary IS NULL

order by employee_id