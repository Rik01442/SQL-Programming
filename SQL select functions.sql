create database class_room;

create database class_room2;

create database college;

drop database class_room2;

use college;

create table student (
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

insert into student values(1, "AMAN", 26);
INSERT INTO student values(2, "Hritik", 24);

select * from student;

use sakila;

show tables;

select * from actor;

select actor_id, first_name, 'jj',actor_id+10 from actor;

select first_name, actor_id from actor;

select*, first_name from actor;

select * from actor where actor_id=2;

select first_name, last_name from actor where actor_id=2;

-- between
select * from actor where actor_id between 2 and 7;

select * from actor where actor_id in (2,7);

select * from actor where first_name in ('NICK','ED');

select * from actor
where actor_id=2  or actor_id=7;

select * from actor where first_name='NICK' and actor_id>40;

-- like operator = pattern
-- % = 0 or more characters
select * from actor where first_name='ED';
select * from actor where first_name like 'E%';
select * from actor where first_name like '%E';
select * from actor where first_name like '%E%';
select * from actor where first_name like '%E%' or first_name like '%T%';
select * from actor where first_name like '%E%' and first_name like '%T%';
select * from actor where first_name like '_L%';
select * from actor where first_name like '%T_';

select concat("Mr.", " ", first_name, " ", last_name); 

select first_name, instr(first_name, 'l') from actor;

select first_name, locate('e',first_name,3) from actor;

select first_name, length(first_name) from actor;

select first_name, char_length(first_name) from actor;

select first_name, length(first_name) from actor;

--  dummy (dual) table

select 10+2 from dual;

select trim("  hello    ") from dual;

select trim(trailing ' ' from "  hello    ") from dual;

select trim(trailing 'l' from "  hello      xlll") from dual;

--  lpad, rpad

select first_name,lpad(first_name, 6, "#") from actor;
select first_name,rpad(first_name, 6, "#") from actor;

-- concat, substring, lpad, trim

-- numeric functions
-- count, truncate, floor, mod, pow, ceil

select round(12.4) from dual;
-- after decimal
select round(12.869, 1) from dual;
select round(12.869, 2) from dual;
-- before decimal
select round(12.869, -1) from dual;
select round(76.568, -2) from dual;
select round(776.568, -3) from dual;

select truncate(776.568, 2) from dual;

select floor(10.99999), ceil(10.91111) from dual;








