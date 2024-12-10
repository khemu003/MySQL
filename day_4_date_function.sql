
# Date functions

select current_date(), current_time(), current_timestamp() from dual;

select now(), adddate( now(),2) from dual;

select now(), adddate(now(), interval 2 month) from dual;

select datediff(now(), '2024-11-30') from dual;

select last_day(now()) from dual;

select month(now()) from dual;

select date_format(now() , "%a") from dual;
select date_format(now() , "%m") from dual;
select date_format(now() , "%M") from dual;
select date_format(now() , "%h") from dual;
select date_format(now() , "%") from dual;

