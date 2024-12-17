-- constraints
drop table test5;
create table test(eid int unique not null);
insert into test values(200);
insert into test values(200);
insert into test values();

select * from test;

create table test1(eid int unique);
insert into test1 values(200);
insert into test1 values();

select * from test1;

create table test2(eid int default 0, name varchar(20));
insert into test2 (eid,name) values(100,"aman");
insert into test2 (eid,name) values(null,"abhishek");
insert into test2 (name) values("abhishek2");

select * from test2;
select * from test2 where eid is null;

create table test3(eid int primary key auto_increment, name varchar(20));
insert into test3 (eid,name) values(100,"aman");
insert into test3 (name) values("aman");
insert into test3 (eid,name) values(null,"aman1");
select * from test3;

create table test4(eid int check(eid>10), name varchar(20));
insert into test4(eid,name) values(100,"aman");
insert into test4(eid,name) values(9,"aman");
select * from test4;

create table test5(eid int, name varchar(20), 
		constraint regex_test_eid_chk check(eid>10),
		constraint regex_name_uk unique(name));

insert into test5(eid,name) values(100,"aman");
insert into test5(name) values("vishesh");

select * from test5;
