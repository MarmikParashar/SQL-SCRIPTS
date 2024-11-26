show databases;
create database Labwork;
use Labwork;


create table CDAC(
Id int Primary key ,
Name varchar(50),
Residence varchar(25),
Course varchar(25),
Purpose varchar(25),
ContactInfo bigint,
Date date,
Entry_time time,
Exit_time time );


show tables;
describe CDAC;


insert into CDAC
 values(
	
    102,"Kamesh","Gwalior","Pg-Dbda","Lecture",7805935153,20240913,093012,053000);


SELECT * FROM labwork.cdac;
