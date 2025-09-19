--IIF Condition

use ibm

select * from employee

select *, IIF( age > 38, 'Management employee', 'Software Engineer') as designation from employee

select * from employee order by age

select *, IIF( age < 23, 'Intern', IIF(age < 25, 'Software Engineer' , IIF( age < 29, 
'Senior Software Engineer', IIF( age < 40 , 'Tech Lead', IIF(AGE < 42, 'Team Lead',
'Management Employees'))))) as Designation from employee


select *, IIF( age < 23, 'Intern', IIF(age < 25, 'Software Engineer' , IIF( age < 29, 
'Senior Software Engineer', IIF( age < 40 , 'Tech Lead', IIF(AGE < 42, 'Team Lead',
'Management Employees'))))) as Designation into Emp_d from employee

select * from emp_d

select designation, sum(Salary) from Emp_d group by designation

select *, iif( (age > 30 and salary > 40000), 'old', 'young') as status from employee