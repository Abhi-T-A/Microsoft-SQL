--Rank() & Dense_rank()

use ibm

select * from employee

select id, name, salary, rank() over(order by salary desc) as Rank_sal from employee

select *, rank() over(order by salary desc) as Sal_Rank from employee

select id, name, salary, dense_rank() over(order by salary desc) as Dense_rank_sal from employee

select * , dense_rank() over(order by salary desc) as dense_rank_sal from employee


select id, name, salary, age, rank() over(order by age desc) as Rank_age,
dense_rank() over(order by age desc) as dense_rank_age from employee


select id, name, salary, age, rank() over(order by age asc) as Rank_age,
dense_rank() over(order by age asc) as dense_rank_age from employee