CREATE USER
'Markile'@'localhost' identified by 'dragl';
    
CREATE USER 
'raphael'@'localhost' identified by 'wisdom',
'michael'@'localhost' identified by 'justice' ;
    
RENAME User
'Markile'@'localhost' to 'Metatron'@'localhost';
    
select user
from mysql.user;

set password for 'Metatron'@'localhost' = 'purity';

show tables;

grant select
on practice.employee to 'Metatron'@'localhost';

grant insert 
on practice.employee to 'Metatron'@'localhost';

revoke all , grant option from 'Metatron'@'localhost';

grant all privileges 
on practice.employee to 'Metatron'@'localhost';

set autocommit=false;

select * from employee;

insert into employee values
("Aman","Developer",20231119,30);

savepoint sp;

insert into employee values
("Ankur","Programmer",20231119,30);

rollback to sp;

insert into employee values
("Ankit","Doctor",20231009,12);

set autocommit=false;

insert into employee values
("Kumar","Programmer",20231109,30);

commit;

rollback;

select * from employee;

insert into employee values
("KumarRaj","Programmer",20231109,10);

insert into employee values
("Kamlesh","Devops",20241109,100);

savepoint sp3;

insert into employee values
("Kamesh","Devops",20231109,90);

rollback to sp3;

use practice;


