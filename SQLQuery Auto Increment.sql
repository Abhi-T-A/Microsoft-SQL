--Auto Increment

use ibm

create table World
(Wid int IDENTITY(11,1), Continent varchar(255), Countries varchar(255))

select * from world

insert into world (Continent, Countries) values ('Asia', 'Fifty Six'), ( 'Europe', 'fourty')

select * from world

insert into world (Continent, Countries) values ('Africa', 'Twenty'), ('Australia', 'Five'),
('South America', 'Eleven')

select * from world

insert into world values( 20, 'North America', 'Seven') -- error


insert into world values( 16, 'North America', 'Seven') --error

delete from world where wid = 12

select * from world


insert into world (Continent, Countries) values ('Antartica', 'one')

select * from world

