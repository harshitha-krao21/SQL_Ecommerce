use ecommerce;

select * from orders
where order_status = "canceled";

-- extract date - year/month/date from date


select * from orders;

-- extract day
select order_delivered_customer_date, day(order_delivered_customer_date)
from orders;

-- extract month
select order_delivered_customer_date, month(order_delivered_customer_date)
from orders;

-- extract year
select order_delivered_customer_date, year(order_delivered_customer_date)
from orders;

-- extract monthname
select order_delivered_customer_date, monthname(order_delivered_customer_date)
from orders;

-- extract dayname
select order_delivered_customer_date, dayname(order_delivered_customer_date)
from orders;


-- difference between dates

select order_estimated_delivery_date, order_delivered_customer_date
from orders;

select datediff(order_estimated_delivery_date, order_delivered_customer_date)
from orders;

-- give the null values in order_delivered_customer_date

select * from orders
where order_delivered_customer_date is null;

-- group by

 select order_status from orders;

-- below query throws error, bec there are different order status and cannot perform aggregation there, so need to use groupby
-- select order_status, count(order_status) from orders;

select order_status, count(order_status) as order_count from orders
group by(order_status)
order by(order_count);

select * from orders;
