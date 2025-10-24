--Stored Procedures

use ibm

select * from employee

create procedure Hike2025
as
select *, (salary * 1.1) as New_salary from employee

exec Hike2025

sp_helptext 'Hike2025'

create procedure Hike2026  
as  
select *, (salary * 1.2) as New_salary from employee

exec hike2026

sp_helptext 'hike2026'


--Create a procedure to get the salary slip


create procedure Salary_slip
as
select id, name, gender, (salary * 5) as Special_Allowence, (age * 20) as Income_Tax,
(age * 30) as Profession_tax, (salary * 2) as Shift_alowence, (salary *4) as Travel_alowence,
(age * 100) as Medical_alowence from employee

exec salary_slip


sp_helptext 'salary_slip'

create procedure Salary_slip2025 
as  
select id, name, gender, (salary * 5) as Special_Allowence, (age * 20) as Income_Tax,  
(age * 30) as Profession_tax, (salary * 2) as Shift_alowence, (salary *4) as Travel_alowence,  
(age * 100) as Medical_alowence,((salary * 5) + (age * 20) + (age * 30) + (salary * 2) +
 (salary *4) + (age * 100) ) as Total_CTC from employee

 exec Salary_slip2025

 drop procedure Salary_slip2025