-- Traggers and events

Select *
from employee_demographics
;

Select *
from employee_salary
;

delimiter $$
create trigger employee_insert
	after insert on employee_salary
    for each row 
begin
	insert into employee_demographics (employee_id, first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name);
end $$
delimiter ;

insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values(13, 'leo', 'ale', 'ceo', 1000000, null);


