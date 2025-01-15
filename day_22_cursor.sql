use sakila;

delimiter $$

create procedure create_empname_list()
begin
	declare empname varchar(100) default "";
    declare done bool default false;
    
    -- declare cursor for emp name
    declare cur cursor for
    select first_name from sakila.actor where actor_id<5;
    
    -- declare not found handler
    declare continue handler for not found set done = true;
    
    
    
	-- open cursor
    open cur;
    
    -- fetch the data using loop
    process_name : Loop
		fetch cur into empname;
			if done = true then
				leave process_name;
			end if;
        select empname;
	end loop;
    
    -- close the cursor
    close cur;
    
end$$

Delimiter ;

drop procedure create_empname_list;

call create_empname_list;



