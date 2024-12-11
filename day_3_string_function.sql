

-- functions ==> Block of code

use sakila;

select * from actor;

--          string function            


-- Return concatenated string
select concat_ws(" ","MR",first_name,last_name) from actor;

-- Return the substring as specified
select first_name, substr(first_name,2) from actor;
select first_name, substr(first_name,2,3) from actor;
select first_name, substr(first_name,-4,5) from actor;


-- Return the index of the first occurrence of substring
select first_name, instr(first_name,'N') from actor;

-- Return the position of the first occurrence of substring
select first_name, locate('N', first_name,3) from actor;

-- Return the length of a string in bytes
select first_name, length(first_name) from actor;

-- Return number of characters in argument
select first_name, char_length(first_name) from actor;

-- dummy (dual dunction)
select 10+2 from dual;

-- Remove leading and trailing spaces
select trim("     hey khemraj     ") from dual;

-- remove last characters
select trim(trailing ' ' from "     hey khemraj  ") from dual;
select trim(trailing 'j' from "     hey khemrajjjjjjj") from dual;

-- Remove first characters
select trim(leading  'q' from "qqqqqqqqhey khemraj       ") from dual;

-- lpad ==> Return the string argument, left-padded with the specified string
-- rpad ==> Append string the specified number of times
select first_name, lpad(first_name, 6,"*") from actor;
select first_name, rpad(first_name, 6,"*") from actor;



--         numerical functions           

-- round
select round(12.47) from dual;       # 12
select round(12.67) from dual;       # 13
select round(12.445,1) from dual;    # 12.4
select round(12.7834,1) from dual;   # 12.8
select round(42.4,-1) from dual;     # 40 
select round(45.4,-1) from dual;     # 50 
select round(42.4,-2) from dual;     # 0 
select round(67.4,-2) from dual;     # 100
select round(342.4,-3) from dual;     # 0 
select round(642.4,-3) from dual;     # 1000

-- truncate
select truncate(345.345,2) from dual;

-- mod
select mod(23,4) from dual;

-- floor and ceil
select floor(10.99999), ceil(10.001) from dual;

