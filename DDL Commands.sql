-- DDL => DATA DEFINATION LANGUAGE
use regexconst;

create table test(id int, name1 varchar(20));
insert into test values(10,"tushar");
insert into test values(20,"ram");
select * from test;  -- insert => DML operation

-- update
update test set name1 = 'xyz' where id=10;

delete from test where id is null;

create table companies(id int);
insert into companies values(10);
select * from companies;

-- add table column
	alter table companies
    add column phone varchar(15);
    
    alter table companies
    add column employee_count3 int not null;

alter table companies drop column employee_count3;

rename table companies to newcompanies1;
	select * from companies;
    select * from newcompanies1;
    
alter table newcompanies1 rename to companies;
	select * from companies;
alter table companies rename column id to ids;

alter table companies 
add constraint regex_company_uk unique(company_name);

update companies set company_name=0;
alter table companies 
change ids newids varchar(6);

desc companies;
insert into companies values(20,5,"ABC");

-- IMP QUES. Select second highest amount from employees table
use sakila;
select * from payment;
select max(amount) from sakila.payment where amount < 11.99;	