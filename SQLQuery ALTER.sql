--Alter 

use ibm

select * from Employee

alter table employee add country varchar(255)

select * from employee

alter table employee add pincode int, email varchar(255)

select * from employee

alter table employee drop column email

alter table employee drop column country, pincode

select * from employee

alter table employee add Country varchar(255)

update employee set country = 'India'

select * from employee

update employee set country = 'USA' where name = 'Mark'

select * from employee

alter table employee drop column email