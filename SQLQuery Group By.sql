use IBM

--Group By

select * from employee

select sum(salary) from employee

select sum(salary) as Total_salary from employee

select * from employee

select department, sum(salary) from employee group by department 

select gender, sum(salary) from employee group by gender 

select gender, sum(salary) as Total_Salary from employee group by gender 

select department, gender, sum(salary) as Total_salary from employee group by department, gender 