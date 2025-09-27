Use IBM

select * from employee

--Intersect

select * from employee where gender = 'Male'
Intersect
select * from employee where department = 'HR'

select * from employee where gender = 'Male' or city = 'Delhi'
Intersect
select * from employee where gender = 'Male' or city = 'Mumbai'


--Except

select * from employee where gender = 'Male'
Except
select * from employee where department = 'HR'

select * from employee where gender = 'Female'
except
select * from employee wHere department = 'IT'