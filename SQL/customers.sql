-- create database ecommerce; 

use ecommerce;

select * from customers;

-- select customer_id, customer_city, customer_state from ecommerce.customers;

-- where
select * from ecommerce.customers where customer_state = "MG" or customer_state = "SP";

-- where not
select * from ecommerce.customers where not (customer_state = "MG" or customer_state = "SP");

-- in
-- list of customers from state SC,PR,SP,MG
select * from ecommerce.customers where customer_state in ("SC","PR","SP","MG");

-- not in
-- list of customers NOT from state SC,PR,SP,MG
select * from ecommerce.customers where customer_state not in ("SC","PR","SP","MG");

-- like
-- gives results based on a pattern

-- starting with r
select * from customers 
where customer_city like "r%";

-- ending with r
select * from customers 
where customer_city like "%r";

-- having 'al' anywhere in the customer_city
select * from customers
where customer_city like "%al%";

-- counts rows of all id including repeated ones
select count(customer_id) from customers;
select count(customer_city) from customers;

-- counts distinct products sellersrows of all and cities
select count(distinct(customer_city)) from customers;

-- Done with aggregate datasellerssellers

select customer_state, count(customer_state) as state_count
from customers
group by customer_state
order by state_count desc ;

-- JOINS: is used to join two tables

select customers.customer_id, orders.order_status
from customers join orders
where customers.customer_id = orders.customer_id;

-- JOINS: is used to join two tables with where clause

select customers.customer_id, orders.order_status
from customers join orders
on customers.customer_id = orders.customer_id
where orders.order_status = 'canceled';








