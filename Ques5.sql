SELECT user FROM mysql.user;
create database Dept;
create database Emp;


-- 1. Create user and implement the following commands on relation (Emp and Dept).

CREATE USER 'USER_A'@'localhost' IDENTIFIED BY '123456';

-- 2. Develop a query to grant all privileges of employees table into departments table.

GRANT ALL PRIVILEGES ON Emp TO 'USER_A'@'localhost';
GRANT ALL PRIVILEGES ON Dept TO 'USER_A'@'localhost';
SHOW GRANTS FOR 'USER_A'@'localhost';

-- 3. Develop a query to grant some privileges of employees table into departments table.

GRANT SELECT, INSERT, UPDATE ON Emp TO 'USER_A'@'localhost';
GRANT SELECT, INSERT, UPDATE ON Dept TO 'USER_A'@'localhost';
SHOW GRANTS FOR 'USER_A'@'localhost';

-- 4. Develop a query to revoke all privileges of employees table from departments table.

REVOKE ALL PRIVILEGES ON Emp FROM 'USER_A'@'localhost';
REVOKE ALL PRIVILEGES ON Dept FROM 'USER_A'@'localhost';
SHOW GRANTS FOR 'USER_A'@'localhost';

-- 5. Develop a query to revoke some privileges of employees table from departments table.

REVOKE SELECT, INSERT ON Emp FROM 'USER_A'@'localhost';
REVOKE SELECT, INSERT ON Dept FROM 'USER_A'@'localhost';
SHOW GRANTS FOR 'USER_A'@'localhost';