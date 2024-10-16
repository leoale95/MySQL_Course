-- Temporary tables

Select *
from employee_salary;

CREATE TEMPORARY TABLE salary_over_50k AS
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;
