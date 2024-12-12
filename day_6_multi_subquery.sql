

use sakila;

select * from payment;

 select amount from payment where payment_id in (1,3);

select * from payment
where
amount in (select amount from payment where payment_id in (1,3));

select * from payment
where
amount =any (select amount from payment where payment_id in (1,3));

select * from payment
where
amount >all (select amount from payment where payment_id in (1,3));

