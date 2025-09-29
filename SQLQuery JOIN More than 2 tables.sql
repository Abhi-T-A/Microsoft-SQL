--Join more than 2 tables

use IBM

select * from employee

select * from project

select * from company

select * from employee e inner join project p on e.id = p.pid inner join company c
on p.pid = c.cid


select e.id, e.name, e.age, e.salary, p.project_name, p.pincode, c.technology, c.postal from
employee e inner join project p on e.id = p.pid inner join company c on p.pid = c.cid

