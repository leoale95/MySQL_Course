-- unions 

select employee_id first_name, last_name
from employee_demographics
union distinct
select employee_id first_name, last_name
from employee_salary
;

select employee_id first_name, last_name
from employee_demographics
union all
select employee_id first_name, last_name
from employee_salary
;

select employee_id, first_name, last_name, 'old man' as label
from employee_demographics
where age > 40 and gender = 'male'
union
select employee_id, first_name, last_name, 'old lady' as label
from employee_demographics
where age > 40 and gender = 'female'
union
select employee_id, first_name, last_name, 'highly paid employee' as label
from employee_salary
where salary > 70000
order by first_name, last_name
;