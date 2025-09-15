--Full Join

use IBM

Select * from employee

select * from project

insert into project values (32, 'Kpo', 3738, 'Bangalore'),
(33, 'Pen', 3628, 'Aukland'), (34, 'Olm', 3738, 'Noida'), (35, 'Telenor', 2628, 'Oslo')

select * from employee e full join project p on e.id = p.pid

--LEFT JOIN

select * from employee e left join project p on e.id = p.pid

--Right JOIN

select * from employee e right join project p on e.id = p.pid