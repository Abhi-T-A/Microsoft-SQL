--Insert partial data

use IBM

select * from employee

insert into employee (id, name, age, gender) values
(8, 'Ankita', 42, 'Female')

select * from employee

Insert into employee (id, name) values (9, 'Raju')

--Update data

update employee set salary = 50000 where name = 'Ankita'

select * from employee

update employee set department = 'Accounts', city = 'Delhi' where id = 8

update employee set age = 24, gender = 'Male', salary = 35000, department = 'IT',
city = 'Chandigarh' where id = 9

select * from employee

insert into employee values (10, 'Ashok', 34, 'Male', 46000, 'HR', 'Patna')

select * from employee

--Delete

delete from employee where name = 'Raju'

select * from employee

select * from employee where name = 'Ashok'

select * from employee where id = 10

delete top(15) from employee where name = 'Ashok'

select * from employee