-- Stored procedures

Select *
from employee_salary
where salary >= 50000
;

delimiter $$
create procedure large_salaries3()
begin
	Select *
	from employee_salary
	where salary >= 50000;
	Select *
	from employee_salary
	where salary >= 10000;
end $$
delimiter ;



call large_salaries3();






-- parametros

delimiter $$
create procedure large_salaries4(boca int)
begin
	Select salary
	from employee_salary
	where employee_id = boca
    ;
end $$
delimiter ;

call large_salaries4(1)

