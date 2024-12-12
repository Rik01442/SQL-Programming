use sakila;

select * from address;

select city_id, count(district) from address group by city_id having count(district) >= 2;

select * from address;

select * from address order by district,city_id desc;

select customer_id, sum(amount) as "totalAmount" from payment group by customer_id order by totalAmount desc;

-- subquery

select * from payment;
use sakila;

select * from payment 
where amount=(select amount from payment where payment_id=5);

-- Q1 get the payment ID, Staff ID, rental ID and amount only for that payment where the rental ID is greater than rental ID of payment ID = 4

select rental_id from payment 
where payment_id=(select * from payment where rental_id>1422);

-- Q2 get the payment ID, Amount, the 10% increment in amount for those payment where the month of payment = month of payment ID = 5

 select month(payment_date) from payment where payment_id=5;
 
 select payment_id, amount 
 from payment where month(payment_date) = ( select month(payment_date) from payment where payment_id=5 );  
 
--  Q3 get the only customer ID and the total no. of payments done by each customers only for those whose total no. of payment > the total no. of payment done by customer_id =2
SELECT customer_id, COUNT(payment_id) AS total_payments
FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) > (
    SELECT COUNT(payment_id)
    FROM payment
    WHERE payment_id = 2
);