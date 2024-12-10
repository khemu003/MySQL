

-- multi row function


use sakila;

select * from payment;

select distinct(customer_id) from payment;		# union value
select distinct(customer_id),amount from payment;

select sum(amount) from payment;		# total

select count(amount) from payment;		# not includ missing value (null)

select count(*) from payment;		# include missing value (null)

select avg(amount) from payment;		# average

select sum(amount) from payment where customer_id=1;


-- we only select these columns that we select at group by function
select customer_id from payment group by customer_id;

select customer_id, sum(amount) from payment group by customer_id;

select customer_id, count(*) from payment group by customer_id;

-- 1. count the number of customer according to staff
select staff_id,count(customer_id) from payment group by staff_id;

-- 2.you have to find out the total number of payment, total amount spend and total number of customer served in each month
select 
date_format(payment_date,"%M"), 
count(payment_id), 
sum(amount), 
count(customer_id) 
from payment 
group by date_format(payment_date,"%M");

-- having 
select 
date_format(payment_date,"%M"), 
count(payment_id), 
sum(amount), 
count(customer_id),
count(*)
from payment 
group by date_format(payment_date,"%M")
having count(*) > 2000;


select * from address;

select count(address_id) from address;
select count(address2) from address;

-- 1. get the each district many the total district present and sum of city_id of each district
select district, count(district), sum(city_id) from address group by district;

