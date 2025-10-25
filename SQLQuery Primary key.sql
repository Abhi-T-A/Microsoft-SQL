--Primary key

use IBM

select * from employee

alter table employee alter column id int not null

alter table employee add constraint Pri_k_id Primary key(id)

select * from employee

insert into employee (name, age) values ('Palki', 34)


insert into employee (id, name, age) values (5,'Palki', 34)

insert into employee (id, name, age) values (26,'Simran', 34)

select * from Employee

alter table employee drop constraint Pri_k_id

update employee set name = 'Rajat' where id = 17

alter table employee alter column name varchar(255) not null

alter table employee add constraint Pri_n Primary key(name)

select * from employee

alter table employee drop constraint pri_n

select * from employee


alter table employee add constraint Pri_k_id Primary key(id)