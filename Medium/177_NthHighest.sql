-- Write a solution to find the nth highest distinct salary from the Employee table. If there are less than n distinct salaries, return null.

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N - 1;

    RETURN (
        IF(
            N >= (SELECT COUNT(DISTINCT salary) FROM Employee),
            NULL,
            (
                SELECT DISTINCT salary
                FROM Employee
                ORDER BY salary DESC
                LIMIT 1 OFFSET N
            )
        )
    );
END;