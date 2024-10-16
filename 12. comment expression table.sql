-- cte comment table expression
WITH CTE_example AS (
    SELECT gender, AVG(salary) AS avg_salary, max(salary) max_sal, Min(salary) min_sal
    FROM employee_demographics dem
    JOIN employee_salary sal
        ON dem.employee_id = sal.employee_id
    GROUP BY gender
)
SELECT * 
FROM CTE_example;


