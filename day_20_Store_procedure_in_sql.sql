-- store procedure 


use sakila;


DELIMITER $$
Create procedure getactor()
begin
	select * from actor order by last_name;
    
end  $$

DELIMITER ;



call getactor();           --  Call anywhere 

drop procedure getactor;      --  Remove procedure 


-- delimeter
-- declare
-- begin
-- end


use sakila;

select *from payment;

select amount from payment where payment_id= 3;



DELIMITER //
create procedure proce_amount()
begin
	declare v_amount double(6,2);
	select amount into v_amount from payment
					where payment_id = 3;
	select v_amount;
end //
DELIMITER ;


call proce_amount;			--  Call anywhere 

drop procedure proce_amount;

DELIMITER //
create procedure proce_amount()
begin
	declare v_amount double(6,2);
	select amount into v_amount from payment
					where payment_id = 3;
	select v_amount;
end //
DELIMITER ;


call proce_amount;







DELIMITER //
create procedure proce_amount2( IN pid int)
begin
	declare v_amount double(6,2);
	select amount into v_amount from payment
					where payment_id = pid;
	select v_amount;
end //
DELIMITER ;


drop procedure proce_amount2;


call proce_amount2(2);


-- in paratmente int print first_name ,last name of an actor

DELIMITER //
create procedure proce_name( IN aid int)
begin
-- 	declare v_amount double(6,2);
	select first_name,last_name from actor
					where actor_id = aid;
end //
DELIMITER ;


select * from actor;


call proce_name(5);



--  Take a payment id from the user and get the amount into 
-- the salary variable 

DELIMITER //
create procedure proce_amount5( IN pid int)
begin
	declare salary double(6,2); 
	select amount into salary from payment
					where payment_id = pid;
	select salary;
end //
DELIMITER ;

DELIMITER //
create procedure proce_amount7( IN pid int,out salary double(6,2))
begin
	select amount into salary from payment
					where payment_id = pid;
	
end //
DELIMITER ;

CALL proce_amount7(1, @salary);
SELECT @salary AS result_salary;

select * from payment;

drop procedure proce_amount5;

call proce_amount5(4);


select * from actor;

-- 2:  take a actor id from the user into a varialble call ids 
--   you have to returnn the total number of movies done by actor   

select * from film_actor;

DELIMITER //
create procedure proce_amount6( IN aid int)
begin
	declare ids int(60) ;
	select actor_id ,count(aid) into ids from actor
					where actor_id = aid;
	select ids;
end //
DELIMITER ;

drop procedure proce_amount6;

call proce_amount6(1);