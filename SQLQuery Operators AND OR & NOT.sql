--Operators 

use IBM 

SELECT * from employee

--AND

select * from employee where gender = 'male' and department = 'IT'

Select * from employee where gender = 'Female' and department = 'HR'

--OR

select * from employee where gender = 'male' or department = 'IT'

SElect * from employee where gender = 'Female' or department = 'HR'

select * from employee

select * from employee where gender = 'Male' and department = 'IT' and City = 'Delhi'

select * from employee where (gender = 'Male' and department = 'IT' and City = 'Delhi')
or (department = 'HR')

--NOT

select * from employee where gender != 'male'

select * from employee where gender <> 'male'

select * from employee where not gender = 'male'


select * from employee where department != 'IT'

INSERT INTO EMPLOYEE(ID, NAME) VALUES ( 13, 'Somya')

select * from employee

select * from employee where gender is null


select * from employee where not  gender is null


