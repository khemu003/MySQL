

use sakila;

--   condition ? True : False
select first_name,
if (first_name="NICK",0, if(first_name="ED",2,"not value")) 
from actor;

-- case
select first_name,
case
	when first_name = "NICK" then 0
    when first_name = "ED" then 1
    else "NO value"
end as "newcol"
	from actor;


-- get the payment_id, cus_id, amount, month of paymeny_date and quartile of payment_date 
-- 
-- 1.  if amount > 2 then 10%inre  
-- 2. amount > 5  then 25%
-- 3. amount >50 then 8%
-- else 5%

select * from payment;

select payment_id, customer_id, amount, month(payment_date) ,quarter(payment_date),
case
	when amount between 3 and 5 then amount+(amount*0.1)
    when amount between 6 and 8 then amount+(amount*0.25)
    when amount > 8 then amount+(amount*0.5)
    else amount+(amount*0.05)
end as "increment"
	from payment;

-- 