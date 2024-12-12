create database regex1;

use regex1;

create table xyz(id int);
insert into xyz values(20);
insert into xyz values(-20);
select * from xyz;

create table employee1(eid int unsigned);
insert into employee1 values(2147483648);
select * from employee1;

-- tinyint(1 byte), smallint(2 byte), mediumint(4 byte), bigint(8 byte)

create table abc(salary double(5,2));
insert into abc values(20.1);
insert into abc values(120.1);
insert into abc values(3420.1);
insert into abc values(120.11346549877);

select * from abc;

create table test_tool (i bool);
insert into test_bool values(True),(False);

--  char is datatype that is fixed in size
-- varchar(variable character data) - it includes the whitespaces upto the size of the column
create table ep2(name1 char(4));
insert into ep2 values("zz");
insert into ep2 values("zz k");
select name1, length(name1) from ep2;

create table ep_var(name varchar(3));
insert into ep_var values("Xy                 ");
select name1, length(name1) from ep_var;

create table e1(dob date);
insert into e1 values('2024-12-24');
select * from e1;

-- conditional statement
use sakila;
select first_name, if (first_name='NICK',0, if(first_name = "ED",2,"not value")) from actor;

-- case function
select first_name, 
case
	when first_name='NICK' THEN 0
    when first_name='ED' THEN 1
END AS "newcol"
   from actor;

select * from payment;

-- Q1 get the payment id, customer id, amount, month of payment date and quater of payment date with the following increment in the amount. if amount is > $2, we should increase the amount by 10%, amount> 5 25%, amount>8 50%, other wise 5%

select payment_id, customer_id, amount, month(payment_date), case 
																(when amount > 2 then amount = amount + (amount*10/100)
                                                                when amount  > 5 then amount = amount + (amount*25/100)
                                                                when amount > 8 then amount = amount + (amount*50/100)
                                                                else amount + (amount*5/100);
SELECT 
    payment_id,
    customer_id,
    amount AS original_amount,
    
    CASE
        WHEN amount > 8 THEN amount * 1.50
        WHEN amount > 5 THEN amount * 1.25
        WHEN amount > 2 THEN amount * 1.10
        ELSE amount * 1.05
    END AS updated_amount,
    
    MONTH(payment_date) AS payment_month,
    QUARTER(payment_date) AS payment_quarter
FROM 
    payment;

                                                                
                                                                

--q