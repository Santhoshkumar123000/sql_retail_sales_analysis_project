------->created a database as sales_analysis_proj
create database sales_analysis_proj

------>create table as retail_sales_analysis
create table retail_sales_analysis
(
transaction_id int primary key,
sale_date date,
sale_time time,
customer_id int,
gender varchar(20),
age int,
category varchar(20),
quantity varchar(10),
price_per_unit float,
cogs float,
total_sales float
)
select * from retail_sales_analysis_proj
select count(*) from retail_sales_analysis_proj

---------------> data cleaning
select * from retail_sales_analysis_proj 
where 
transactions_id is null
or 
sale_date is null
or
sale_time is null
or 
customer_id is null
or
gender is null 
or 
age is null
or 
category is null 
or 
quantiy is null 
or 
price_per_unit is null 
or 
cogs is null 
or 
total_sale is null 
----------> deleting null values 
delete from retail_sales_analysis_proj 
where 
transactions_id is null
or 
sale_date is null
or
sale_time is null
or 
customer_id is null
or
gender is null 
or 
age is null
or 
category is null 
or 
quantiy is null 
or 
price_per_unit is null 
or 
cogs is null 
or 
total_sale is null


------>Data exploration 

---->how many sales we have ?
select count(*) as t_sales from retail_sales_analysis_proj

------ how many unique customers we have ?
select count(distinct customer_id) as total_customers from retail_sales_analysis_proj

------ how many unique categories we have ?
select count(distinct category) as unique_categories from retail_sales_analysis_proj

--------- data analysis & business key problems and answers are in the following -----------

----> write a sql query to find all the sales made on 2022-11-05
select * from retail_sales_analysis_proj where sale_date='2022-11-05'

----> write a query to retrive all transactions where the category is 'clothing' and the quantity sold is 
--more than 10 in the month of nov_2022
SELECT *
FROM retail_sales_analysis_proj
WHERE category = 'Clothing'
  AND quantiy >=4
  AND sale_date >= '2022-11-01'
  AND sale_date < '2022-12-01';

---- write a query to calculate the total sales for each category 
select category,sum(total_sale) as total_sales,count(*) as t_orders 
from retail_sales_analysis_proj
group by category

------- write a query to find average age of customers who purchased items from the beauty category 
select avg(age) as avg_age from retail_sales_analysis_proj
where category='beauty'

------- wirte a sql query to find all transactions where the total sales is greater than 1000.
select * from retail_sales_analysis_proj








