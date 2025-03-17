-- Textual Data functions

select * from sellers;

-- returns length of text
SELECT 
    seller_city, LENGTH(seller_city) as length
FROM
    sellers;
    
-- trims white spaces
SELECT 
    trim(seller_city)
FROM
    sellers;
    
-- replace function replaces one char by an other char

select seller_city, replace(seller_city, 'a','i') from sellers;

-- concat two cols together in one column
select concat(seller_city, seller_state) as CityState
from sellers;

-- concat two cols together in one column and add - inbetween
select concat(seller_city, " - " , seller_state) as CityState
from sellers;

select *, concat(seller_city, " - " , seller_state) as CityState
from sellers;
    
-- returns output in uppercase
select upper(seller_city) from sellers;

-- returns output in lowercase
select lower(seller_city) from sellers;

