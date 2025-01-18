show databases;

create database deepak;

USE DEEPAK;


SHOW TABLES;


select * from sales_c;






-- Q1   get all transaction done for beauty category in the month of december

select * from sales_c;



alter table sales_c modify sales_date date; 


select * from sales_c  where categoryProduct = "Beauty" and month(sales_date) = 12;


-- Q2 Get the total sales done for each category in each month 

select sum(total_sale) ,categoryProduct, month(sales_date) from sales_c group by categoryProduct, month(sales_date) order by categoryProduct;


-- Q3 find the maximum , minium , average age for people buying beauty products 


select max(age),min(age),avg(age) from sales_c where categoryProduct  = "beauty";

--  Q4 GEt number of transaction done by each user in each category

select customer_id,categoryProduct ,count(customer_id) from sales_c group by customer_id , categoryProduct  order by customer_id;


select * from sales_c;

-- Q5 Find the best selling month for each year along with the average sales for each month.

-- wrong answer 5
select year(sales_date) as year,month(sales_date) as month ,sum(total_sale) as toal_saless,avg(total_sale)  as average from sales_c 
group by year(sales_date) ,month(sales_date) 
order by year ;


-- cte:-  common table expression 


 -- Q7 Get the number of unique customer who purchased product for each category .
select * from sales_c;

select count(distinct(customer_id)) as customer,categoryProduct from sales_c group by categoryProduct;


-- Q6 Get the top 3 and the bottom 3 customer based on their average sales

(select customer_id ,avg(total_sale) as avg_sale from sales_c group by customer_id order by avg_sale limit 3)
  UNION ALL 
 ( select customer_id ,avg(total_sale) as average_sale from sales_c group by customer_id order by  average_sale desc limit 3 );
 
 
--  Q8 how many orders are placed from morning to 1 pm 


-- - how many orders are placed in lunch time from 1pm to 3 pm
-- - how many orders are placed in evening time after 5 pm


select * from sales_c;

select count(id) as total_orders from sales_c where time > '07:00:00' and time < '13:00:00';

select count(id) as total_orders from sales_c where time >'13:00:00' and time< '15:00:00';

select count(id) as total_orders from sales_c where time >'17:00:00';

select count(*) from sales_c; 

--  1987 =  1634 + 71 + 218 