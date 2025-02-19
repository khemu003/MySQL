use sakila;

select * from payment;

select sum(amount) from payment;

select count(amount) from payment;

select avg(amount), sum(amount)/count(amount) from payment;

select distinct(amount) from payment;

select count(distinct(amount)) from payment;

select count(*) from payment where amount=0.99;
select count(amount) from payment where amount=0.99;

select amount from payment group by amount;

select amount, count(amount), sum(amount), avg(amount) from payment group by amount;

-- total amount of each month
select month(payment_date), sum(amount) from payment 
group by month(payment_date);

-- get the total amount and the average amount spend by each customer
select customer_id, sum(amount), avg(amount) from payment group by customer_id;

--  get the total amount and the max and minium amount for each staff id 
select staff_id, sum(amount), max(amount), min(amount) 
from payment group by staff_id;

-- get the total amount total number of entries and the avg amount an max amount by each
select staff_id, count(payment_id) from payment 
group by staff_id;

-- customer where the amount value should be greater then 2 dollor and the payment_id > 10
select 
customer_id, sum(amount), count(amount), avg(amount), max(amount)
from payment 
where amount>2.00 and payment_id>10 
group by customer_id;

select amount, sum(amount) from payment
where amount>5.00 group by amount
having sum(amount)>5000;