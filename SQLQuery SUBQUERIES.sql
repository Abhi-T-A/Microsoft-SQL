--SUBQUERIES

Use IBM

select * from employee

--Find the max salary

select max(salary)  from employee

--Find the 2nd highest salary

select max(salary) as Second_highest_salary from employee where salary <
(select max(salary) from employee)



select max(salary) as Second_highest_salary from employee where salary < 98000


--Find the 3rd highest salary

select max(salary) from employee where salary <
(select max(salary) from employee where salary <
(select max(salary) from employee))


--find the 4th highest salary

select max(salary) from employee where salary <
(select max(salary) from employee where salary <
( select max(salary) from employee where salary <
(select max(salary) from employee)))


--Find the nth max salary

select min(salary) from employee where salary in
(select distinct top(8) salary from employee order by salary desc)

select min(salary) from employee where salary in (
select distinct top(10) salary from employee order by salary desc)

select * from (select name,salary,dense_rank() 
over (order by salary desc)r from employee) 
 as r where r= 10