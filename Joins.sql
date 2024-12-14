-- Joins
create database regex;
use regex;

create table product(pid int, pname varchar(20), price int);

insert into product values(10,"tv",100),(20,"mobile",200), (30,"gyser",4000), (40,"yash",5000);                                                               
                                                                
select * from product;

create table orders(oid int, city varchar(20), product_id int);
insert into orders values(1991,"jaipur",10),(1992,"goa",20), (1993,"UK",10),(1994,"shimla",40),(1995,"kerela",80);

select * from product;
select * from orders;

-- cross join or cartision join a type of join that combines rows from multiple tables to produce a Cartesian product

select o.oid,o.city,o.product_id, p.pname, p.pid from orders as o join product as p where o.product_id=p.pid;

select o.oid,o.city,o.product_id, p.pname, p.pid from orders as o inner join product as p on o.product_id=p.pid;

-- left join
select o.oid,o.city,o.product_id, p.pname, p.pid from orders as o left join product as p on o.product_id=p.pid;
-- right join
select o.oid,o.city,o.product_id, p.pname, p.pid from orders as o right join product as p on o.product_id=p.pid;

use sakila;
select * from actor;
select * from film_actor;

-- Q1 get the actor_id, full_name of the actor, the film_id and the last update column from 3these two table

select a.actor_id, concat(a.first_name, ' ', a.last_name), f.film_id, f.last_update from actor as a inner join film_actor as f on a.actor_id = f.film_id;