--Having

use ibm

select department, sum(salary) as Total_salary from employee group by
department having department = 'IT'

select department, sum(salary) as Total_salary from employee group by
department having department IN ('IT', 'HR')

--Suppose I want all the male sum salary from IT and hr department and IT and hr shoulb be in order

select department, gender, sum(salary) as Total_salary from employee where gender = 'male'
group by department, gender having department in ('HR', 'IT') order by department

select department, gender, sum(salary) as Total_salary from employee where gender = 'male'
group by department, gender having department in ('HR', 'IT') order by department desc