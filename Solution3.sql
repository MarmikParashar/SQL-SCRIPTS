create database Assign3;

use Assign3;

create table EMPLOYEE(E_no int Primary Key ,
 E_name varchar(25) NOT NULL ,
 E_address varchar(30) NOT NULL,
 E_ph_no bigint NOT NULL,
 Dept_no int NOT NULL,
 Dept_name varchar(20) NOT NULL ,
 Job_id varchar(10) NOT NULL , 
 Designation varchar(20) NOT NULL,
 Joining date NOT NULL,
 Salary decimal(10,2) NOT NULL);
 
 insert into EMPLOYEE values
(01,"Rahul","Delhi",4561237891,10,"MECH","R01","MANAGER",19810501,56000.00),
(02,"Vikas","Gurgaon",7894561239,20,"DEV","V02","ANALYST",19811203,42000.00),
(03,"Ritvik","Noida",7412589630,30,"SALES","R03","CLERK",19891117,39000.00),
(04,"Sahil","Delhi",9517534682,20,"DEV","S04","ANALYST",19830411,45000.00),
(05,"Harsh","Faridabad",9173645039,10,"MECH","H05","SUBMANAGER",19841121,52000.00),
(06,"Varun","Noida",1236974258,20,"DEV","V06","ANALYST",19811217,48000.00),
(07,"Jayveer","Gurgaon",3210978456,30,"SALES","J07","CLERK",19880501,41000.00),
(08,"Ravi","Noida",3210978456,40,"TECH","R08","IT PROFF",19840521,45000.00),
(09,"James","Murthal",3210978456,20,"DEV","J09","SUBMANAGER",19850523,45000.00),
(10,"Karan","Delhi",3210978456,40,"TECH","K10","IT PROFF",19871130,42000.00),
(11,"Sumit","Nagpur",3210978456,10,"MECH","S11","PRESIDENT",19800119,80000.00),
(12,"Joseph","Indore",3210978456,20,"DEV","J12","SUBMANAGER",19820511,46000.00);

select * from EMPLOYEE;

select E_no,E_name,Salary from EMPLOYEE
where Designation != "MANAGER" AND Designation != "PRESIDENT";

select * from EMPLOYEE 
where Salary > (SELECT MAX(Salary) FROM EMPLOYEE WHERE Designation = "IT PROFF");

SELECT * FROM EMPLOYEE
WHERE Joining > '1981-12-31'
ORDER BY Designation ASC;

SELECT E_name, Salary,
(DATEDIFF(CURDATE(), Joining)/365) AS Experience,
(Salary / 30) AS Daily_Salary
FROM EMPLOYEE;

SELECT * FROM EMPLOYEE
WHERE Designation = "CLERK" OR Designation = "ANALYST";

SELECT * FROM EMPLOYEE
WHERE Joining IN ('1981-05-01', '1981-12-03', '1981-12-17', '1980-01-19');

SELECT * FROM EMPLOYEE
WHERE Dept_no IN (10, 20);

SELECT E_name FROM EMPLOYEE
WHERE E_name LIKE 'S%';

SELECT E_name, LEFT(E_name, 5) AS First_Five_Chars
FROM EMPLOYEE
WHERE E_name LIKE 'H%';

SELECT * FROM EMPLOYEE
WHERE Designation NOT IN ('PRESIDENT', 'MANAGER')
ORDER BY Salary ASC;

