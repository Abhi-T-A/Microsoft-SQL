--CTE

select * from employee


insert into employee values (32, 'John', 43, 'Male', 53000, 'HR', 'Aukland','New Zealand')

select * from employee

delete from employee where id = 22

select * from employee where name = 'John'



delete top(17) from employee where name = 'JOHN'

select * from employee

insert into employee values (41, 'Eva', 39, 'Female', 80000,'HR','Oslo',   'Norway')
insert into employee values (42, 'Ira', 39, 'Female', 80000, 'HR','Oslo',   'Norway')
insert into employee values (43, 'Clyde', 39, 'Female', 80000,'HR','Oslo',   'Norway')



SELECT *, ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID) AS ROWNUMBER FROM Employee

with Camel AS
(
SELECT *, ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID) AS ROWNUMBER FROM Employee
)
DELETE FROM camel WHERE ROWNUMBER >1

select * from employee

select * from employee


