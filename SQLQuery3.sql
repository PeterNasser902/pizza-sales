select * 
from pizza_sales
where Total_price is null;

select 
	sum(total_price) 
from pizza_sales;

select 
	sum(total_price)/count(Distinct order_id)  
from pizza_sales;

select 
	sum(quantity) 
from pizza_sales;

select 
	count(distinct order_id)
from pizza_sales;

select 
	round(sum(quantity)*1.0 / count(distinct order_id),1)
from pizza_sales;
select 
	cast(sum(quantity)*1.0 / count(distinct order_id) as decimal(10,2))
from pizza_sales;

SELECT 
    order_date,
    SUM(quantity) AS total_pizzas_sold
FROM 
    pizza_sales
GROUP BY 
    order_date
ORDER BY 
    order_date;

SELECT 
    DATENAME(WEEKDAY, order_date) AS day_name,
    count(distinct order_id) AS total_orders
FROM 
    pizza_sales
GROUP BY 
    DATENAME(WEEKDAY, order_date);

SELECT 
    DATENAME(month, order_date) AS day_name,
    count(distinct order_id) AS total_orders
FROM 
    pizza_sales
GROUP BY 
    DATENAME(month, order_date);

select 
	pizza_category, sum(total_price) as total_revenue, sum(total_price)*100/(select sum(total_price) from pizza_sales) as PCT
from pizza_sales
group by pizza_category
order by total_revenue;

select 
	pizza_size, sum(total_price) as total_revenue, round(sum(total_price)*100/(select sum(total_price) from pizza_sales),3) as PCT
from pizza_sales
group by pizza_size
order by total_revenue desc;

select 
	pizza_category,sum(quantity)
from pizza_sales
group by pizza_category;

select top 5 
	pizza_name, sum(total_price) 
from pizza_sales
group by pizza_name
order by 2 desc;

select top 5 
	pizza_name, sum(total_price) 
from pizza_sales
group by pizza_name
order by 2;

select top 5 
	pizza_name, sum(quantity) 
from pizza_sales
group by pizza_name
order by 2 desc;

select top 5 
	pizza_name, sum(quantity) 
from pizza_sales
group by pizza_name
order by 2;

select top 5 
	pizza_name, count(distinct order_id) 
from pizza_sales
group by pizza_name
order by 2 desc;

select top 5 
	pizza_name, count(distinct order_id) 
from pizza_sales
group by pizza_name
order by 2;