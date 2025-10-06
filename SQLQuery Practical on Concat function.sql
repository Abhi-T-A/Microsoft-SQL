--Practical on Concat function

select * from employee

--write the data for all employees in below format

--Amit age is 23, has been given id as 1 earning 25000 rupees, will be assigned to IT
-- department belongs from city Delhi.

select id , name, concat(name ,' age is ', age, ', has been given id as ', id, ' earning ',
salary, ' rupees, will be assigned to ', department, ' department belongs from city ', 
city, '.') as Emp_info from employee

select id , name, concat(upper(name) ,' age is ', age, ', has been given id as ', id, ' earning ',
salary, ' rupees, will be assigned to ', department, ' department belongs from city ', 
city, '.') as Emp_info from employee