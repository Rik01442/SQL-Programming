-- DDL => DATA DEFINATION LANGUAGE
use regexconst;

create table test(id int, name1 varchar(20));
insert into test values(10,"tushar");
insert into test values(20,"ram");
select * from test;  -- insert => DML operation

-- update
update test set name1 = 'xyz' where id=10;

delete from test where id is null;