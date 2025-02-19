use sakila;
select * from payment;

select sum(amount), count(amount) from payment
where amount=2.99;

select amount, sum(amount) from payment
group  by amount having amount != 0.99;

-- order by 
-- alias  - giving the nickname to your data


select amount , amount*10 as salary from payment;
select amount , amount*10 as `new` from payment;

select * from payment
order by amount;

select * from payment 
order by amount desc, rental_id; 

select * from payment 
order by amount desc, rental_id desc;

-- order by use one or more columns 

-- subquery
-- case statement

select amount, if(amount=0.99,'Correct','Incorrect')
from payment;

select amount, 
if(amount=0.99,'Correct',
	if(amount=2.99,'yes','Incorrect'))
from payment;

-- '''
-- select col,
--    case
-- 	 when condition then statement
--      when condition then statement
--    end
-- from table

-- '''

select amount,
case
   when amount=0.99 then 'value is 0.99'
   when amount=2.99 then 'Yes'
   else amount
end as cond
from payment; 

-- q1 now if the count of payment dones for each amount
-- is greater then 10000 print amount  has count of amount
-- other wise we print amount has less than 10000


SELECT amount,
CASE 
	WHEN COUNT(amount) > 1000 THEN CONCAT('amount has count of ', COUNT(amount))
	WHEN COUNT(amount) < 1000 THEN 'amount is less than 1000'
END AS cond
FROM payment
GROUP BY amount;

-- q2 if the amount is greater than 1 dollor then print amount is greater then 1 dollor
-- if amount 3 dollor then print 3 dollor
-- if amount 7 dollor then print 7 dollor 
-- else print amount less than 1 dollor  

select amount,
case
   when amount > 7 then 'amount is 7 dollor'
   when amount > 3 then 'amount is 3 dollor'
   when amount > 1 then 'amount is 1 dollor'
   else 'amount less than 1 dollor'
end as cond
 from payment group by amount;
 
 
-- subquery
-- query with

select * from payment where 
amount=(select amount
        from payment where payment_id=3);