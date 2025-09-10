--DEFAULT 

use IBM

Select * from employee

alter table employee add constraint df_c DEFAULT 'India' for country

insert into employee (id, name, department) values (21, 'Sahil', 'Marketing')

select * from employee

insert into employee values(22, 'John', 34, 'Male', 98000, 'Marketing', 'Seattle', 'USA')

alter table employee drop constraint df_c

select * FROM employee