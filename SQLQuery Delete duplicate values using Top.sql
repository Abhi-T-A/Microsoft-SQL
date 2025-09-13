--Delete duplicate values using Top

Use IBM

select * from employee

select * from employee where name = 'Rohit'

select top(3) * from employee 

select top(5) * from employee where name = 'Rohit'

delete top(7) from employee where name = 'Rohit'

select * from employee

insert into employee values (12, 'Mark', 29, 'Male', 60000, 'HR', 'Seattle')

select * from employee where name = 'Mark'

delete top(13) from employee where name = 'Mark'

select * from employee

