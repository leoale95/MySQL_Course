-- WHERE clause

select *
from employee_salary
where first_name = 'Leslie';


select *
from employee_salary
where salary >= 50000;


select *
from employee_demographics
where gender != 'female';

select *
from employee_demographics
where birth_date > '1985-01-01';


-- AND R NOT -- logical operators
select *
from employee_demographics
where birth_date > '1985-01-01'
and gender = 'male'
;

select *
from employee_demographics
where birth_date > '1985-01-01'
or gender = 'male'
;

-- LIKE statement
-- % and _
select *
from employee_demographics
where first_name like '%er%'
;

select *
from employee_demographics
where first_name like 'a___%'
;

select *
from employee_demographics
where birth_date like '1989%'
;