use ecommerce;

select * from payments;
where payment_type = "UPI" and payment_value >= 500;

select * from payments
where payment_type = "credit_card" and payment_value >= 1000
and payment_installments = 1;

select * from payments
where payment_value >= "1000" and payment_type = "credit_card" and payment_installments = "2";

-- between
select * from payments 
where payment_value between 150 and 200;

select * from payments 
where payment_value >= 150 and payment_value <= 200;

-- order: sort data in ascending or descending order
-- ascending order
select payment_installments from payments
order by payment_installments; 

-- descending order
select * from payments
order by payment_installments desc; 

-- put ascending in one and descending in another column
select * from payments
order by payment_value asc, payment_installments desc;

-- use Cntrl+B to beautify code

-- using above along with where
SELECT 
    *
FROM
    payments
WHERE
    payment_installments = '1'
ORDER BY payment_value DESC;


-- just like head in dataframe in python, limit is used in SQL

-- give first 5 rows of dataframe as it is(not in asc or desc orders)
select * from payments limit 5;

-- 2,3 means omits 2 rows and gives next 3 rows data
select * from payments limit 2,3;

-- Functions
-- Aggregate
select * from payments limit 4;

select sum(payment_value) as total_revenue
from payments;

-- round up to 2 decimal places
select round(sum(payment_value),2) as total_revenue
from payments;

-- get highest payment
select max(payment_value) as highest_payment

-- get lowest payment
select min(payment_value) as lowest_payment
from payments;

-- average
select round(avg(payment_value),2) from payments;

-- ceil and float
select payment_value, ceil(payment_value)
from payments;
select payment_value, floor(payment_value)
from payments;

-- group by with round
select payment_type, round(avg(payment_value),2) as avg_payment
from payments
group by payment_type
order by avg_payment desc;

-- cannot use where clause in aggregate functions. You can use having when aggregate function is used
select payment_type, round(avg(payment_value),2) as avg_payment
from payments
group by payment_type having avg_payment > 100
order by avg_payment desc;

select * from payments;

select year(orders.order_purchase_timestamp) as years, round(sum(payments.payment_value),2) as avg_payment
from orders join payments
on  payments.order_id = orders.order_id
group by years;
