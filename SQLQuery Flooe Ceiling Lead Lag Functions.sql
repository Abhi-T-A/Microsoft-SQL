--Floor function is used to find the last integer

Use Ibm

select floor(25.25)

select floor(25.97)

select floor(30.01)

select floor(-25.50)

select floor(0.25)


select floor(salary) from employee


--CEILING function is similar to floor only thing it gives the upper number 

select CEILING(25.25)

select CEILING(50.01)

select ceiling(0.01)

select ceiling(-.01)

select ceiling(-10.75)

--LEAD

SELECT NAME FROM EMPLOYEE

SELECT name,   
    LEAD(name) OVER (ORDER BY name) AS NextQuota  
FROM employee


--LAG

SELECT name,   
    Lag(name) OVER (ORDER BY name) AS NextQuota 
	from employee

	
	SELECT name,   
    LEAD(name) OVER (ORDER BY name) AS LeadQuota  ,
	Lag(name) OVER (ORDER BY name) AS LagQuota
FROM employee


