use practice;

select * from employee;

describe employee;

insert into employee values
("Raeyan","Analyst",20210327,20);

set autocommit = false;

select @@autocommit;

insert into employee values
("Raeyan","Analyst",20210327,20);

insert into employee values
("Kaaamesh","Dev",20210327,100);

commit;

