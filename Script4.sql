create database Lab2;

use Lab2;

create table OfficeInfo(id int Primary Key,
	Name varchar(25) NOT NULL,
    City varchar(25) NOT NULL,
    Salary decimal(20,2) NOT NULL,
    Department varchar(25) NOT NULL ,
    Contact bigint NOT NULL);
    
    show tables;
    
drop table Office;

insert into OfficeInfo values
	(101,"Vansh","Gaziabad",75000.00,"Management",7212123654),
	(102,"Kamesh","Noida",80000.00,"Management",2581473697),
	(103,"Vivek","Noida",60000.00,"Developer",4561237925),
	(104,"Saurav","Gurgaon",30000.00,"Intern",4446669990),
	(105,"Shaswat","Delhi",55000.00,"Sales",7894561235),
	(106,"Marmik","Delhi",85000.00,"HR",5556664447),
	(107,"Saket","Gurgaon",60000.00,"Management",8899784619),
    (108,"Sahil","Delhi",55000.00,"Developer",5644654654),
    (109,"Somya","Delhi",60000.00,"Sales",54544545488),
    (110,"Satvik","Delhi",75000.00,"Management",7789945554);
    
select * from OfficeInfo;

alter table OfficeInfo add column working_hours int;

 
describe OfficeInfo;

update OfficeInfo 
set working_hours = 10
where id = 110;


DELIMITER //  
Create Trigger trig1   
Before INSERT ON OfficeInfo
FOR EACH ROW  
BEGIN  
IF NEW.working_hours >15 THEN SET NEW.working_hours = 10;   
END IF;  
END //
DELIMITER //  
    
show triggers;
