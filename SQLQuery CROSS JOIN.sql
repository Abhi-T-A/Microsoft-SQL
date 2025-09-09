--CROSS JOIN 

USE IBM

--(It is a cartisian product or rows A * rows B) (24 * 19) = 456

select * from employee  -- 24 rows

select * from project  -- 19 rows 

select * from employee cross join project 

