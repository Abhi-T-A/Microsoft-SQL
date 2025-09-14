--EXCEPTION HANDLINGS

use ibm

select * from employee



begin transaction Salary_employee
begin try
select salary/0 from employee
end try
begin catch
select error_message() as error
end catch


begin transaction salary_123
begin try
select salary from employee
end try
begin catch
select error_message() as error
end catch

begin transaction salary_321
begin try
select *, salary * name as new_weekly from employee
end try
begin catch
select error_message() as error
end catch


begin transaction Salary_employee
begin try
insert into employee (id, age, gender, city ) values ( 20, 39/0, 'Male', 'Mumbai')
end try
begin catch
select error_message() as error
end catch


begin transaction Salary_employee
begin try
select max(salary) from employee where salary < 
(select max(salary)/0 from employee)
end try
begin catch
select error_message() as error
end catch