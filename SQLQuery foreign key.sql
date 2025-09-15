--foreign key

use IBM

select * from employee

select * from project

alter table project add constraint For_key Foreign key(pid) References employee(id)

delete from project where pid = 9

alter table project add constraint for_key foreign key(PID) references employee(id)

insert into project values (30, 'Lpo', 3637, 'Mumbai')

select * from employee

insert into employee values (30, 'Sameer', 23, 'Male', 89000, 'IT', 'Delhi', 'India')

insert into project values (30, 'Lpo', 3637, 'Mumbai')

select * from project

select * from employee

delete from employee where id = 15

delete from project where pid = 15

delete from employee where id = 15

alter table employee drop constraint pri_k_id

alter table project drop constraint for_key

alter table employee drop constraint pri_k_id