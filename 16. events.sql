-- events

select * 
from employee_demographics;

delimiter $$
create event delete_retirees1
on schedule every 30 second
do
begin
	delete
	from employee_demographics
    where age >=60;
end $$
delimiter ;

show variables like 'event%';