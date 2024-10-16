-- String functions

-- lenght

Select length('skyfall');
-- 7

select first_name, length(first_name)
from employee_demographics
order by 2;


-- upper & lower
select first_name, upper(first_name), lower(last_name)
from employee_demographics;

-- trim left right - delete spaces
select rtrim('           sky       ')
from employee_demographics;

select first_name, 
left(first_name, 4),
right(first_name, 4),
-- substring good for dates
substring(first_name, 3, 2)
from employee_demographics;

-- replace
select first_name, replace(first_name, 'a', 'z')
from employee_demographics;

-- locate
select locate('x', 'alexander')
from employee_demographics;

-- concact
select first_name, last_name,
concat(first_name,' ', last_name)
from employee_demographics;









