show Databases ;

create database Javadb ;

use Javadb ;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL DEFAULT 0
);

describe products ;

insert into products( product_id , name , price , quantity ) values
(101 , "Pen" , 9.75 , 100 ),
(102 , "Paper" , 2.25 , 500 ),
(103 , "Pencil" , 5.60 , 200 ),
(104 , "Eraser" , 1.15 , 500 ),
(105 , "Sharpner" , 1.25 , 500 ) ;

select * from products ;

delete from products where name = "Kamesh";
