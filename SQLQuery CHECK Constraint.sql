--CHECK Constraint

use ibm

select * from employee

insert into employee values (18, 'Anchal', 7, 'Female', 59000, 'HR', 'Chennai', 'India')

select * from employee

alter table employee add constraint Chk_age CHECK( age between 22 and 60)

select * from employee 

update employee set age = 27 where name = 'Anchal'

select * from employee

alter table employee add constraint Chg_age CHECK( age between 22 and 60)

select * from employee

insert into employee values (19, 'Vijay', 17, 'Male', 70000, 'HR', 'Dehradun', 'India')

alter table employee drop constraint Chg_age

insert into employee values (19, 'Vijay', 17, 'Male', 70000, 'HR', 'Dehradun', 'India')

select * from employee

alter table employee add constraint Ch_dept CHECK (department in ('IT', 'hr', 
'Marketing', 'Accounts'))

select * from employee


insert into employee values (20, 'Shivanshu', 45, 'Female', 98000, 'Finance', 'Lucknow', 'India')

alter table employee drop constraint ch_dept

insert into employee values (20, 'Shivanshu', 45, 'Female', 98000, 'Finance', 'Lucknow', 'India')

select * from employee


