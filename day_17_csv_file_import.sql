show databases;
create database new;

use new;

create table emp2 (Emp_id int,Name varchar(20),Department varchar(20), working_hour int);

select * from emp_info;
SELECT @@SECURE_FILE_PRIV;
LOAD DATA INFILE
'C:\ProgramData\MySQL\MySQL Server 9.1\Uploads\emp_info.csv'
INTO TABLE emp2 FIELDS TERMINATED BY ','
IGNORE 1 LINES;

SELECT * FROM EMP2;

select *from emp2;


create table employee(Emp_id int,Name varchar(20),Department varchar(20), working_hour int);


SELECT @@SECURE_FILE_PRIV;

LOAD DATA INFILE
'C:\emp_info.csv'
INTO TABLE employee  FIELDS TERMINATED BY ','
IGNORE 1 LINES;


select * from employee;

create table emp4 (Emp_id int,Name varchar(20),Department varchar(20), working_hour int);


SELECT @@SECURE_FILE_PRIV;
LOAD DATA INFILE
'C:\emp_info.csv'
INTO TABLE emp4  FIELDS TERMINATED BY ','
IGNORE 1 LINES;



create table placement(cgpa float,resume_score float,placced int);

LOAD DATA INFILE
'C:\placement.csv'
INTO TABLE PLACEMENT FIELDS TERMINATED BY ','
IGNORE 1 LINES;

select * from placement;


create table sales(month_number int ,facecream int ,facewash int,toothpaste int,	bathingsoap int,shampoo int, moisturizer int,	total_units	int ,total_profit int);

SELECT @@SECURE_FILE_PRIV;

LOAD DATA INFILE
'C:\sale.csv'
INTO TABLE sales FIELDS TERMINATED BY ','
IGNORE 1 LINES;

select * from sales;

--  Find the total profit for each month 

select month_number, sum(total_profit) FROM Sales group by month_number;

--  Find the month with the highest total profit

select  month_number, total_profit from Sales order by    total_profit DESC limit 1; 



-- Find the total sales of each product across all months

select 
    SUM(bathingsoap) AS Soap,
    SUM(facecream) AS Face_Cream,
    SUM(facewash) AS Face_Wash,
    SUM(toothpaste) AS Tooth_paste,
    SUM(shampoo) AS Shampoo,
    SUM(moisturizer) AS Moisturizer
from  Sales;


--  Compare total sales of bathing soap and toothpaste for each month
SELECT 
    month_number, 
    bathingsoap, 
    toothpaste,
    (bathingsoap - toothpaste) AS Difference
FROM Sales;






	
