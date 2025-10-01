--JOINS

use IBM

--Inner Join

select * from employee

select * from project 

select * from employee inner join project on employee.id = project.pid

select * from employee e inner join project p on e.id = p.pid

select e.id, e.name, e.age, e.gender, e.salary, e.department, p.project_name,
p.pincode , p.location from employee e inner join project p on e.id = p.pid

select e.id, e.name, e.age, e.gender, e.salary, e.department, p.project_name,
p.pincode , p.location from employee e inner join project p on e.id = p.pid
where e.gender = 'male'

select e.id, e.name, e.age, e.gender, e.salary, e.department, p.project_name,
p.pincode , p.location from employee e inner join project p on e.id = p.pid
where e.department = 'IT' order by age