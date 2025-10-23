--Triggers

use IBM

select * from employee

--After Trigger

Create Trigger Trig_up_a on employee
after update
as begin
print 'You table has been updated'
end

select * from employee

update employee set age = 25 where name = 'Amit'

select * from employee

create trigger Trig_in_del_a on employee
after delete, insert
as begin
print 'The row has been been deleted or inserted'
end

delete from employee where id = 32

--Instead of Trigger

create trigger trig_u_i on employee
instead of update
as begin
print 'you do not have permission to update data in table employee'
end

select * from employee

update employee set salary = 40000 where name = 'Amit'

select * from employee

create trigger trig_in_i on employee
instead of insert
as begin 
print 'You cannot insert any data'
end

insert into employee values (33, 'Mayur', 33, 'Male', 67000, 'HR', 'Surat', 'India')

select * from employee

create trigger trig_del_i on employee
instead of delete
as begin
print 'You cannot delete anything'
end


delete from employee where id = 1

select * from employee

drop trigger trig_up_a

drop trigger trig_u_i, trig_in_i, trig_in_del_a, trig_del_i