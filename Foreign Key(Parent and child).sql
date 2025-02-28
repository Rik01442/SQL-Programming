-- Parent and child

use regex1;
create table product123(pid int primary key, amount int);
insert into product123 values(101,876),(102,745);
select * from product123;

drop table order123;
create table order123(oid int, city varchar(20),
product_id int,
foreign key(product_id) references product123(pid));

insert into order123 values(9632,'jaipur',101);
insert into order123 values(9634,'jaipur',202); -- error due to data already exist
select * from order123;
