--Import CSV file 


use ibm

create table fish
(id int, lastname varchar(255), firstname varchar(255), middlename varchar(255), 
suffix varchar(255))


select * from Fish

bulk insert dbo.fish
from 'C:\Users\Lenovo\Desktop\INT\Batch 28\tiger.csv'
with
(
format = 'CSV',
Firstrow = 2
)


select * from fish


create table Sunday
(id int, lastname varchar(255), firstname varchar(255), middlename varchar(255),
suffix varchar(255))

select * from sunday

bulk insert dbo.sunday
from 'C:\Users\Lenovo\Desktop\INT\Batch 29\tiger.csv'
with
( 
format = 'CSV',
Firstrow = 2
)

select * from sunday




create table Friday
(id int, lastname varchar(255), firstname varchar(255), middlename varchar(255),
suffix varchar(255))

select * from Friday


bulk insert dbo.friday
from 'C:\Users\Lenovo\Desktop\INT\Batch 29\tiger.csv'
with
( 
format = 'CSV',
Firstrow = 2,
lastrow = 15
)

select * from friday