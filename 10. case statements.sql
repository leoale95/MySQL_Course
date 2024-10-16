-- case statements

select first_name, last_name, age,
case 
	when age <= 30 then 'Young' 
    when age between 31 and 50 then 'old'
end as age_bracket
from employee_demographics;

-- pay increase and bonus
select first_name, last_name, salary,
case
	when salary < 50000 then salary + (salary*0.05)
    when salary > 50000 then salary + (salary*0.07)
end as new_salary,
case
	when dept_id = 6 then salary*.10
end as bonus
from employee_salary
;

