create database Assign2;

use Assign2;

create table EMPLOYEE(E_no int Primary Key ,
 E_name varchar(25) NOT NULL ,
 E_address varchar(30) NOT NULL,
 E_ph_no bigint NOT NULL,
 Dept_no varchar(10) NOT NULL,
 Dept_name varchar(20) NOT NULL ,
 Job_id varchar(10) NOT NULL , 
 Salary decimal(10,2) NOT NULL);
 
 describe EMPLOYEE ;
 
 alter table EMPLOYEE add column email_id varchar(50);
 
insert into EMPLOYEE values
(101,"Rahul","Delhi",4561237891,"M10","MECH","R01",56000.00,"rahul@mech.in"),
(102,"Vikas","Gurgaon",7894561239,"D10","DEV","V02",42000.00,"viksa@dev.in"),
(103,"Ritvik","Noida",7412589630,"S10","SALES","R03",39000.00,"ritvik@sales.in"),
(104,"Sahil","Delhi",9517534682,"D10","DEV","S04",45000.00,"sahil@dev.in"),
(105,"Harsh","Faridabad",9173645039,"M10","MECH","H05",52000.00,"harsh@mech.in"),
(106,"Varun","Noida",1236974258,"D10","DEV","V06",48000.00,"varun@dev.in"),
(107,"Jayveer","Gurgaon",3210978456,"S10","SALES","J07",41000.00,"jayveer@sales.in"),
(108,"Ravi","Noida",3210978456,"T10","TECH","R08",45000.00,"ravi@tech.in"),
(109,"James","Murthal",3210978456,"D10","DEV","J09",45000.00,"james@dev.in"),
(110,"Karan","Delhi",3210978456,"T10","TECH","K10",42000.00,"karan@tech.in"),
(111,"Sumit","Nagpur",3210978456,"M10","MECH","S11",60000.00,"sumit@mech.in"),
(112,"Joseph","Indore",3210978456,"S10","DEV","J12",46000.00,"joseph@dev.in");

select * from EMPLOYEE;

select * from EMPLOYEE 
where Dept_no = "D10";

update EMPLOYEE 
set E_address = "Nagpur"
where E_no = 112;

select * from EMPLOYEE 
where Dept_name = "MECH";

update EMPLOYEE 
set email_id = NULL 
where E_name = "James";

select * from EMPLOYEE 
where Dept_name = "SALES";
