use demo_db;
show tables;
	select * from order_lines;
	select * from orders;
	select * from products;
	select * from invoices;
    select * from brands;


-- Q1. Find out the top three product id based on the number of quantity sold

select product_id, sum(quantity) as total_quantity from order_lines group by product_id order by sum(quantity) desc limit 3;

-- Q2. Get the order date, product id, product name and the order id which has been sold in the multiples of 2

select o.order_date, od.product_id, p.product_name, od.order_id from order_lines as od join orders as o on od.order_id = o.id join products as p on od.product_id = p.product_id where od.quantity % 2 = 0;

-- Q3. Get the brand name, order value, product name for each product sold

select b.brand as brand_name, o.order_value, p.product_name from order_lines as ol join products as p on ol.product_id = p.product_id join brands as b on p.product_id = b.product_id join orders as o on ol.order_id = o .id; 

-- Q4. Get the average order value for each order which has been placed after half an hour.
 
select o.id as order_id, avg(order_value) as avg_order from orders as o;

-- Q5. Get the order id, the number of quantity sold, the month and the total price for each brand.

select o.id as order_id, sum(ol.quantiy) as total_quantity,	month(o.order_date) as order_month, b.brand_name, sum(ol.quantity * p.price) as total_price
from order_lines AS ol
join orders as o on ol.order_id = o.id
join products as p on ol.product_id = p.product_id
join brands as b on p.product_id = b.product_id
group by o.id, month(o.order_date), b.brand;
