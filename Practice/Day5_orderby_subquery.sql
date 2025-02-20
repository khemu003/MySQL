use sakila;

select amount, sum(amount) from payment
where amount<>0.99
group by amount having sum(amount)>10000;

select amount, sum(amount) from payment
group by amount having amount<>0.99;

-- order by
-- alias

select amount, amount*10 as new_col from payment;

select amount, amount*10 as `select` from payment;

select * from payment
order by amount;

select * from payment
order by amount desc;

select * from payment
order by amount desc, rental_id desc;


-- case statement

-- 1. if 
select amount, 
if(amount=0.99, "correct", if(amount=2.99, "yes", "incorrect"))
from payment;

select amount,
	case
		when amount=0.99 then "value is 0.99"
        when amount=2.99 then "value is 2.99"
        else amount
	end as `condition`
from payment;

-- Q.1.  now if the count of payment dones for each amount
-- is greater then 10000 print amount  has count of amount
-- other wise we print amount has less than 10000

-- Q.2. if the amount is greater than 1 dollor then print amount is greater then 1 dollor
-- if amount 3 dollor then print 3 dollor
-- if amount 7 dollor then print 7 dollor 
-- else print amount less than 1 dollor
SELECT amount,
       CASE 
           WHEN COUNT(amount) > 1000 THEN CONCAT('amount has count of ', COUNT(amount))
           WHEN COUNT(amount) < 1000 THEN CONCAT('amount is less than ', COUNT(amount))
       END AS cond
FROM payment
GROUP BY amount;


select amount, 
	case 
		when amount > 7 then "amount greater then 7 dollor"
		when amount > 3 then "amount greater then 3 dollor"
		when amount > 2 then "amount greater then 2 dollor"
        else "amount less then 2 dollor"
	end as `amount compare`
from payment;


-- subquery

select * from payment where 
amount=(select amount from payment 
		where payment_id=2);



