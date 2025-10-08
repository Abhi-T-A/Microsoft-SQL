--Views


use ibm 

select * from employee

create view View_m
as
select * from employee where gender = 'male'

select * from View_m

insert into view_m values (31, 'Joseph', 34,'male', 90000, 'Accounts', 'Chennai', 'India')

select * from View_m

select * from employee

delete from View_m where id = 30

select * from View_m

select * from employee

delete from employee where id = 26

select * from View_m

insert into View_m values (32, 'Shivi', 32, 'Female', 45000, 'Marketing', 'Meerut', 'India')


select * from View_m

select * from employee