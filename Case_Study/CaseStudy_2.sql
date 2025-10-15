Create Database CaseStudy_2

use CaseStudy_2

CREATE TABLE LOCATION (
  Location_ID INT PRIMARY KEY,
  City VARCHAR(50)
);

INSERT INTO LOCATION (Location_ID, City)
VALUES (122, 'New York'),
       (123, 'Dallas'),
       (124, 'Chicago'),
       (167, 'Boston');
	   
  CREATE TABLE DEPARTMENT (
  Department_Id INT PRIMARY KEY,
  Name VARCHAR(50),
  Location_Id INT,
  FOREIGN KEY (Location_Id) REFERENCES LOCATION(Location_ID)
);

INSERT INTO DEPARTMENT (Department_Id, Name, Location_Id)
VALUES (10, 'Accounting', 122),
       (20, 'Sales', 124),
       (30, 'Research', 123),
       (40, 'Operations', 167);

CREATE TABLE JOB
(JOB_ID INT PRIMARY KEY,
DESIGNATION VARCHAR(20))

INSERT  INTO JOB VALUES
(667, 'CLERK'),
(668,'STAFF'),
(669,'ANALYST'),
(670,'SALES_PERSON'),
(671,'MANAGER'),
(672, 'PRESIDENT')

CREATE TABLE EMPLOYEE
(EMPLOYEE_ID INT,
LAST_NAME VARCHAR(20),
FIRST_NAME VARCHAR(20),
MIDDLE_NAME CHAR(1),
JOB_ID INT FOREIGN KEY
REFERENCES JOB(JOB_ID),
MANAGER_ID INT,
HIRE_DATE DATE,
SALARY INT,
COMM INT,
DEPARTMENT_ID  INT FOREIGN KEY
REFERENCES DEPARTMENT(DEPARTMENT_ID))

INSERT INTO EMPLOYEE VALUES
(7369,'SMITH','JOHN','Q',667,7902,'17-DEC-84',800,NULL,20),
(7499,'ALLEN','KEVIN','J',670,7698,'20-FEB-84',1600,300,30),
(7505,'DOYLE','JEAN','K',671,7839,'04-APR-85',2850,NULl,30),
(7506,'DENNIS','LYNN','S',671,7839,'15-MAY-85',2750,NULL,30),
(7507,'BAKER','LESLIE','D',671,7839,'10-JUN-85',2200,NULL,40),
(7521,'WARK','CYNTHIA','D',670,7698,'22-FEB-85',1250,500,30)
	   
select * from location

select * from Department

select * from Job

select * from employee

--1. List all the employee,department,job,locations details.select * from LOCATIONselect * from EMPLOYEEselect * from DEPARTMENTselect * from job--5. List out the First Name, Last Name, Salary, Commission for all Employees.select  First_Name, Last_Name, Salary, Comm from EMPLOYEE/*6. List out the Employee ID, Last Name, Department ID for all employees and aliasEmployee ID as "ID of the Employee", Last Name as "Name of the Employee", Department ID as "Dep_id" */select EMPLOYEE_ID as 'ID of the Employee', LAST_NAME as 'Name of the Employee',DEPARTMENT_ID as Dep_id  from EMPLOYEE--7)List out the annual salary of the employees with their names only.select * from EMPLOYEEselect CONCAT_WS(' ',FIRST_NAME,LAST_NAME) as full_name  ,salary*12 as annual_salary from EMPLOYEE  --1. List the details about "Smith".select * from EMPLOYEE where LAST_NAME = 'Smith'--2. List out the employees who are working in department 20.select * from EMPLOYEE where DEPARTMENT_ID=20--3. List out the employees who are earning salary between 2000 and 3000.select * from EMPLOYEE where SALARY between 2000 and 3000--4. List out the employees who are working in department 10 or 20select * from EMPLOYEE where DEPARTMENT_ID=10 or DEPARTMENT_ID=20select * from EMPLOYEE where DEPARTMENT_ID IN (10, 20)--5. Find out the employees who are not working in department 10 and 30.select * from EMPLOYEE where DEPARTMENT_ID not IN (10, 30)--6. List out the employees whose name starts with 'L'.select * from EMPLOYEE where FIRST_NAME like 'L%'--7. List out the employees whose name starts with 'L' and ends with 'E'.select * from EMPLOYEE where FIRST_NAME like 'L%' AND  FIRST_NAME  LIKE '%E'SELECT * FROM EMPLOYEE WHERE FIRST_NAME LIKE 'L%E'--8. List out the employees whose name length is 4 and start with 'J'.SELECT * FROM EMPLOYEE WHERE FIRST_NAME LIKE 'J___'select * from EMPLOYEE where len(FIRST_NAME)=4 and FIRST_NAME like 'j%'--9. List out the employees who are working in department 30 and draw the--salaries more than 2500.SELECT * FROM EMPLOYEE WHERE DEPARTMENT_ID=30 AND SALARY>2500--10. List out the employees who are not receiving commission.SELECT * FROM EMPLOYEE WHERE COMM IS NULL