-- multi row function
-- aggregate function
use sakila;
select * from payment;

select sum(amount), count(amount) from payment;
select avg(amount) , sum(amount)/count(amount)
from payment;

select distinct(amount) from payment;

select count(distinct(amount)) , count(amount) from payment;


select count(amount) from payment 
where amount=0.99;

select count(amount) from payment 
where amount=2.99;

-- group by

select amount from payment group by
amount;

select amount, count(amount) from payment group by
amount;

select amount, count(payment_id) from payment group by
amount;

select amount, count(payment_id), sum(amount),
avg(amount) from payment group by
amount;


-- payment_id amount , payment month
select payment_id , amount , month(payment_date)
from payment;
-- total amount of each month , 

select month(payment_date) , sum(amount)
from payment group by month(payment_date);

-- que 1 get the total amount and the avg amount spend by each customer

select * from payment;
select customer_id, sum(amount), avg(amount)
from payment group by customer_id;

-- que 2 get the total amount and the max and mini amount for each staff id 
select staff_id , sum(amount) , max(amount),
min(amount) from payment group by staff_id;

-- que 3 get the total number of payment done by each staff

select staff_id , count(amount)  from payment
group  by staff_id;

-- que 4 get the total amount total number of entries and the avg amount an max amount 
-- by each customer where the amount value should be greater then 2 dollor and 
-- the payment_id > 10

select * from payment;
select  customer_id ,sum(amount), count(amount),
avg(amount) , max(amount) from payment where amount > 2.00 and 
payment_id > 10 group by customer_id;

select amount, sum(amount)
from payment group by amount 
	having sum(amount) > 5000;
        
        
