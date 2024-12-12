
use sakila;

select * from address;

select city_id, count(district) from address group by city_id having count(district);

-- order by
select * from address 
order by district, city_id desc;

select customer_id, sum(amount) as "totalamount" from payment
group by customer_id
order by sum(amount);

select customer_id, sum(amount) as "totalamount" from payment
group by customer_id
order by totalamount;

--     single row subQuery

select * from payment;

select amount from payment where payment_id=3;

select * from payment where amount=5.99;

select * from payment where amount=(select amount from payment where payment_id=3);

-- 1. get the payment_id staff_id, ranted_id, and amount only for where the rented_id is greater than rental_id of payment_id=4
select payment_id, staff_id, rental_id, amount from payment 
where rental_id > (select rental_id from payment where payment_id=4);

-- 2. get the payment_id,amount,the 10% increment in amount for those payment where the month of payment date=the month of payment id = 5
select payment_id, amount, (amount+(amount*0.1)) as "10% incrememt" from payment 
where month(payment_date)=(select month(payment_date) from payment where payment_id=5);

-- 3. get the customer_id and the total_number of payment done by each customer only for 
-- those who's total number of payment shuold be greater than the total_number of payment done by customer_id=2
select customer_id, count(amount) from payment group by customer_id
having count(amount)>(select count(amount) from payment where customer_id=2) ;



