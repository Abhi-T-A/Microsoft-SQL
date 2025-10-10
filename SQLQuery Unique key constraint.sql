--Unique 

Use IBM 

select * from employee

alter table employee alter column id int null

insert into employee values (22, 'Clyde', 43, 'Male', 89000, 'Accounts', 'Oslo', 'Norway')

select * from employee

alter table employee add constraint Uni_id UNIQUE(id)

delete from employee where id is null

update employee set id = 23 where name = 'Clyde'

alter table employee add constraint uni_id unique(id)

insert into employee (id, name) values ( 8, 'Romel')

insert into employee (name, age , gender) values ('Nipun', 32, 'Male')

select * from employee order by id 

alter table employee drop constraint uni_id