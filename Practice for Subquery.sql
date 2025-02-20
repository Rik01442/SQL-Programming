use sakila;)

select * from payment
where amount > (select amount from payment where rental_id = 1183);

select * from payment;

-- get those payment where the month matches with the payment id=3 month

select * from payment 
where month(payment_date) = (select month(payment_date) from payment where payment_id=3);

-- get those amount  where the total no. of payments for the amount 
-- should be greater than the total payment of amount=0.99

select amount, count(amount) from payment 
					group by amount 
						having count(amount)>(select count(amount) from payment where amount = 0.99);


-- get each customer ID and the total amount spend where the total amount should be greater than
-- the total amount spended by customer=9

select customer_id, sum(amount) from payment 
group by customer_id 
having sum(amount) > (select sum(amount) from payment where customer_id=9);

-- multirow subquery
-- can't use =,>,<

select amount from payment where
payment_id in (1,3);

select * from payment
where amount in (select amount from payment 
			where payment_id in (1,3));

-- greater than any = amount will be given greater the min. value
select * from payment
where amount > any (select amount from payment 
			where payment_id in (1,3));

-- less than any = amount will be given other the than max. value
select * from payment
where amount < any (select amount from payment 
			where payment_id in (1,3));

-- greater than all
select * from payment
where amount > all (select amount from payment 
			where payment_id in (1,3));
 
-- less than all
select * from payment
where amount < all (select amount from payment 
			where payment_id in (1,3));
            
