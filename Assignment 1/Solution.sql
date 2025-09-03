--Assignment 1

--Saleman Table Creation 

create table Saleman(SalesmanId int,SalesmanName varchar(255),Commission decimal(10,2),
City varchar(255),Age int);

select * from Saleman

insert into Saleman values(101,'Joe',50,'California',17),
                          (102,'Simon',75,'Texas',25),
						  (103,'jessie',105,'Florida',35),
						  (104,'Danny',100,'Texas',22),
						  (105,'Lia',65,'New Jersy',30);

--Customers Table Creation

create table Customers(Salesman int,CustomerId int,CustomerName varchar(255),PurchaseAmount int);

select * from Customers

insert into customers values(101,2345,'Andrew',550),
                            (103,1575,'Lucky',4500),
							(104,2345,'Andrew',4000),
							(107,3747,'Remona',2700),
							(110,4004,'Julia',4545);
select * from Customers

--Orders Table Creation 

create table Orders(OrderId int,CustomerId int,SalesmanId int,OrderDate Date,Amount int);

select * from Orders

insert into Orders values(5001,2345,101,'2021-07-01',550),
                        (5003,1234,105,'2022-02-15',1500);
select * from Orders

--Tasks to be Performed:
--1. Insert a new record in your Orders table
insert into Orders values(5005,3245,107,'2023-06-13',2000),
                         (5007,4345,109,'2025-05-06',1800);
select * from Orders

/*2. Add Primary key constraint for SalesmanId column in Salesman table.
Add default constraint for City column in Salesman table. Add Foreign key constraint for SalesmanId
column in Customer table. Add not null constraint in Customer_name column for the Customer table.*/

-- Step 1: Set the column to NOT NULL (fixing the null issue)
ALTER TABLE saleman
ALTER COLUMN SalesmanId INT NOT NULL;

-- Step 2: Add the PRIMARY KEY constraint
ALTER TABLE saleman
ADD CONSTRAINT pri_k_id PRIMARY KEY (SalesmanId);

select * from Saleman

--Add default constraint for City column in Salesman table
ALTER TABLE saleman 
ADD CONSTRAINT df_c DEFAULT 'India' FOR City;

-- Add not null constraint in Customer_name column for the Customer table.
ALTER TABLE customers 
ADD CONSTRAINT fk_salesman_id FOREIGN KEY (SalesmanId) REFERENCES saleman(SalesmanId);


--3. Fetch the data where the Customer’s name is ending with ‘N’ also get the purchase amount value greater than 500. 
SELECT * 
FROM customers 
WHERE CustomerName LIKE '%N%' AND PurchaseAmount > 500;

/*4. Using SET operators, retrieve the first result with unique SalesmanId values from two 
tables, and the other result containing SalesmanId with duplicates from two tables. */
-- Unique SalesmanId values from both tables
SELECT SalesmanId FROM saleman
UNION
SELECT Salesman FROM customers;  


SELECT SalesmanId FROM saleman
UNION ALL
SELECT Salesman FROM customers;


/*
5. Display the below columns which has the matching data. 
Orderdate, Salesman Name, Customer Name, Commission, and City which has the 
range of Purchase Amount between 500 to 1500. 
*/
SELECT 
    o.OrderDate,
    s.SalesmanName,
    c.CustomerName,
    s.Commission,
    s.City
FROM Orders o
JOIN Customers c ON o.CustomerId = c.CustomerId
JOIN Saleman s ON o.SalesmanId = s.SalesmanId
WHERE c.PurchaseAmount BETWEEN 500 AND 1500;

--6. Using right join fetch all the results from Salesman and Orders table.

SELECT 
    s.SalesmanId, 
    s.SalesmanName, 
    o.OrderId, 
    o.OrderDate, 
    o.CustomerId
FROM Saleman s
RIGHT JOIN Orders o 
    ON s.SalesmanId = o.SalesmanId;
