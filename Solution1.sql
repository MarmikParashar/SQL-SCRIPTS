create database Assignment;

use Assignment;

create table EMPLOYEE(Emp_no int Primary Key ,
 E_name varchar(25) NOT NULL ,
 E_address varchar(30) NOT NULL,
 E_ph_no bigint NOT NULL,
 Dept_no int NOT NULL,
 Dept_name varchar(20) NOT NULL ,
 Job_id char NOT NULL , 
 Salary decimal(10,2) NOT NULL);
 
 describe EMPLOYEE;

alter table EMPLOYEE
add column HIREDATA varchar(25);
 
alter table EMPLOYEE modify Job_id  varchar(2);	

alter table EMPLOYEE rename column Emp_no to E_no;

alter table EMPLOYEE modify Job_id varchar(20);

