Use IBM

select * from employee

--Greater Than

select * from employee where salary > 45000

select * from employee where salary > = 45000


--Less Than

select * from employee where salary < 45000

select * from employee where salary < = 45000

--Between

select * from employee where age between 23 and 30 

select * from employee where name between 'Amit' and 'Rohit'

select * from employee where city between 'Delhi' and 'Mumbai'


--IN

select * from employee where id in (1,2,5, 6, 11)

select * from employee where city in ( 'delhi', 'mumbai')

select * from employee where name in ('Amit' ,'Upasana', 'Ankita')