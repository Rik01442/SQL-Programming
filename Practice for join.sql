use sakila;

-- joins ==> 1 or more table combine

use sakila;
select * from address;

create database test1;
use test1;

create table product(pid int , name varchar(20), price int);
insert into product values(10,'tv',100),(20,'apple',200),
(30,'mobile',300),(40,'shoe',1500);

select * from product;

create table orders(oid varchar(20), city varchar(20),
product_id int);
insert into orders values('A1012','Jaipur',10),
('B21012','Goa',20), ('C3012','Japan',30),('D4012','uK',60);
select * from orders;

select pid , name , price , city 
from product join orders;


-- equi join
select p.pid , p.name , p.price , o.city 
from product as p join orders as o
where p.pid = o.product_id;


-- inner join
select p.pid , p.name , p.price , o.city 
from product as p inner join orders as o
on p.pid = o.product_id;

-- left join
select p.pid , p.name , p.price , o.city 
from product as p left join orders as o
on p.pid = o.product_id;

-- right join
select p.pid , p.name , p.price , o.city 
from product as p right join orders as o
on p.pid = o.product_id;


-- non equi join
select pid , city 
from product, orders
where pid=product_id;


select * from orders;
insert into orders values('E2132','JK',10),
('F213','MH',30);

select p.pid , p.name , p.price ,o.oid, o.city 
from product as p inner join orders as o
on p.pid = o.product_id;

select p.pid , p.name , p.price ,o.oid, o.city 
from product as p left join orders as o
on p.pid = o.product_id;

select p.pid , p.name , p.price ,o.oid, o.city 
from product as p right join orders as o
on p.pid = o.product_id;

-- natural join
select p.pid , p.name , p.price ,o.oid, o.city 
from product as p natural join orders as o;

desc orders;


