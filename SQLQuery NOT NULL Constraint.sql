--Constraints

Use IBM

SELECT * from employee

insert into employee (age, gender, department) values (25, 'Male', 'Accounts')

select * from employee

--Not Null

alter table employee alter column id int not null

update employee set id = 15 where name = 'Badal'

update employee set id = 16 where id is null 

select * from employee

alter table employee alter column id int not null

insert into employee (name, age, gender) values ('Badal', 37, 'Male')

alter table employee alter column id int null

insert into employee (name, age, gender) values ('Badal', 37, 'Male')

select * from employee

alter table employee alter column name varchar(255) not null

update employee set name = 'Arun' where id = 16

select * from employee

update employee set name = 'Roshan' where id = 14

select * from employee

alter table employee alter column name varchar(255) not null

select * from employee

insert into employee (id, age, gender) values (17, 34, 'Male')

alter table employee alter column name varchar(255) null

insert into employee (id, age, gender) values (17, 34, 'Male')

select * from employee

create table Green
(id int not null, name varchar(255), age int, salary int not null)

select * from green

insert into green values (1, 'Mark', 32, 50000),
(2, 'John', 56, 90000)

update green set salary = null where name = 'mark'

alter table green alter column id int null

alter table green alter column salary int null

update green set salary = null where name = 'mark'

select * from green