create database practice ;

show databases; 

use practice ;

create table Prac1(id int Primary Key,
	Name varchar(25) NOT NULL,
    City varchar(25) NOT NULL,
    Contact bigint NOT NULL);
    
insert into Prac1 values
	(1,"Marmik","Delhi",7212123654),
	(2,"Kamesh","Noida",2581473697),
	(3,"Vivek","Noida",4561237925),
	(4,"Saurav","Gurgaon",4446669990),
	(5,"Shaswat","Delhi",7894561235),
	(6,"Vansh","GAZIABAD",5556664447),
	(7,"Saket","Gurgaon",8899784619),
    (8,"Sahil","Delhi",5644654654),
    (9,"Somya","Delhi",54544545488),
    (10,"Satvik","Delhi",7789945554);
    
insert into Prac1 values(8,"Sahil","Delhi",5644654654),
    (9,"Somya","Delhi",54544545488),
    (10,"Satvik","Delhi",7789945554);

select * from Prac1 ;

describe Prac1 ;

select Count(Name),City 
from Prac1 
group by City;

select Name , City 
from Prac1
order by City ;

drop table join1;

create table join1(emp_id int Primary key ,
Name varchar(25),
Salary int);

insert into join1 values
(11,"Rahul",50000),
(12,"Ravi",30000),
(14,"Ritik",45000),
(17,"Rakesh",78000);

insert into join1 values(18,"Rudra",85222);

insert into join3 values
(11,"Rahul","Sales"),
(12,"Ravi","Development"),
(17,"Rakesh","HR"),
(15,"Aman","Foreign Affairs");


create table join3(emp_id int Primary Key, 
Name varchar(25) , 
Department varchar(25));

SET GLOBAL sql_mode = (SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));

select * from 
join1 inner join join3
on join1.emp_id=join3.emp_id;
     
select * from 
join1 left join join3
on join1.emp_id=join3.emp_id;

select * from 
join1 right join join3
on join1.emp_id=join3.emp_id;

select * from 
join1 ,join3  
where join1.emp_id = join3.emp_id;

Create view Prac1View as select * from Prac1;

select * from Prac1View;

create table T1(id int Primary Key NOT NULL,
	Name varchar(25) NOT NULL,
    Residence varchar(25) NOT NULL,
    Department varchar(25) NOT NULL,
    Salary decimal(10,2) NOT NULL);
    
insert into T1 values
(1,"Mark","Delhi","Management",80000.00),
(2,"Ravi","Faridabad","Development",60000.00),
(3,"Vasu","Gaziabaad","Intern",30000.00),
(4,"Sham","Gurgaon","HR",100000.00),
(5,"Ram","Noida","Management",75000.00),
(6,"Kumar","Delhi","Development",55000.00),
(7,"Harsh","Faridabad","Sales",47000.00),
(8,"Parv","Haryana","Intern",35000.00),
(9,"Meena","Indore","Sales",49000.00),
(10,"Neena","Noida","Management",85000.00);

create view T1_view 
as select * from T1 
where Salary > 60000.00;
    
select * from T1_view ;

select Name, Department, Salary from T1 
where Department = "Sales" OR Department = "HR";

CREATE TABLE employee(  
    name varchar(45) NOT NULL,    
    occupation varchar(35) NOT NULL,    
    working_date date,  
    working_hours varchar(10));
    
describe employee;
    
INSERT INTO employee VALUES    
('Robin', 'Scientist', '2020-10-04', 12),  
('Warner', 'Engineer', '2020-10-04', 10),  
('Peter', 'Actor', '2020-10-04', 13),  
('Marco', 'Doctor', '2020-10-04', 14),  
('Brayden', 'Teacher', '2020-10-04', 12),  
('Antonio', 'Business', '2020-10-04', 11);  

select * from employee;

DELIMITER //  
Create Trigger trigwh   
BEFORE INSERT ON employee 
FOR EACH ROW  
BEGIN  
IF NEW.working_hours < 0 THEN SET   NEW.working_hours = 0;   
END IF;  
END //

show triggers ;

INSERT INTO employee VALUES    
('Alec', 'Doctor', '2020-10-012', 15),  
('John', 'Fireman', '2020-09-012', -17);

select * from employee ;

DELIMITER //
CREATE TRIGGER tri2
BEFORE UPDATE ON employee
FOR EACH ROW
BEGIN
    IF NEW.working_hours > 12 THEN
        SET NEW.working_hours = 12;
    END IF;
END //

DELIMITER ;

update employee 
set working_hours = 20
where working_hours = 0;


CREATE TABLE ProductSales(
EmpName VARCHAR(45) NOT NULL,
Year INT NOT NULL,
Country VARCHAR(45) NOT NULL,
ProdName VARCHAR(45) NOT NULL,
Sales DECIMAL(12,2) NOT NULL,
PRIMARY KEY(EmpName, Year)
);

INSERT INTO ProductSales(EmpName, Year, Country, ProdName, Sales)
VALUES('Mike Johnson', 2017, 'Britain', 'Laptop', 10000),
('Mike Johnson', 2018, 'Britain', 'Laptop', 15000),
('Mike Johnson', 2019, 'Britain', 'TV', 20000),
('Mary Greenspan', 2017, 'Australia', 'Computer', 15000),
('Mary Greenspan', 2018, 'Australia', 'Computer', 10000),
('Mary Greenspan', 2019, 'Australia', 'TV', 20000),
('Nancy Jackson', 2017, 'Canada', 'Mobile', 20000),
('Nancy Jackson', 2018, 'Canada', 'Calculator', 1500),
('Nancy Jackson', 2019, 'Canada', 'Mobile', 25000);

select * from ProductSales ;

SELECT Country, SUM(Sales) AS total_amount
FROM ProductSales GROUP BY Country;

SELECT EmpName, Year, Country, ProdName, Sales, SUM(Sales)
OVER(PARTITION BY Country) as grand_total
FROM ProductSales;

SELECT EmpName, Year, Country, ProdName, Sales ,
Case
WHEN Sales  >= 20001 THEN 'Outstanding'
WHEN Sales  >= 15001 AND Sales < 20001 THEN 'Excellent'
WHEN Sales  >= 10001 AND Sales < 15001 THEN 'Good'
WHEN Sales  >= 9001 AND Sales < 10001 THEN 'Average'
WHEN Sales  >= 5001 AND Sales < 9001 THEN 'Bad'
WHEN Sales  < 5000 THEN 'Failed'
END AS Sales_Remark
FROM ProductSales;	 

