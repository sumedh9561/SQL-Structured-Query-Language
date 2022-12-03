Problem 1 : The following query is given:

SELECT
  t1.order_id,
  t1.quantity,
  t2.product_name,
  t2.list_price
FROM
  order_01_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id;

Using the UNION ALL operator, create a query that displays all sales data for 
January and February (order_01_2021 and order_01_2021 tables). Display the same 
columns in the output table.


SELECT
  t1.order_id,
  t1.quantity,
  t2.product_name,
  t2.list_price
FROM
  order_01_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id
UNION ALL
SELECT
  t1.order_id,
  t1.quantity,
  t2.product_name,
  t2.list_price
FROM
  order_02_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id;




Problem 2 : The following query is given:

SELECT
  t1.quantity,
  t2.product_name,
  t2.list_price
FROM
  order_01_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id
UNION ALL
SELECT
  t1.quantity,
  t2.product_name,
  t2.list_price
FROM
  order_02_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id;

Modify this query by adding a fourth column that calculates the total sales for 
each record (quantity * list_price) and assign the alias total_price to it.



SELECT
  t1.quantity,
  t2.product_name,
  t2.list_price,
  t1.quantity * t2.list_price AS total_price
FROM
  order_01_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id
UNION ALL
SELECT
  t1.quantity,
  t2.product_name,
  t2.list_price,
  t1.quantity * t2.list_price AS total_price
FROM
  order_02_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id;



Problem 3 : The following query is given:

SELECT
  t1.quantity,
  t2.product_name,
  t2.list_price,
  t1.quantity * t2.list_price AS total_price
FROM
  order_01_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id
UNION ALL
SELECT
  t1.quantity,
  t2.product_name,
  t2.list_price,
  t1.quantity * t2.list_price AS total_price
FROM
  order_02_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id;

Modify the above query. Sort the output table by descending total_price and 
limit the result to the first five records.


SELECT * FROM
(SELECT t1.quantity,
       t2.product_name,
       t2.list_price,
       t1.quantity * t2.list_price AS total_price
FROM order_01_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id
UNION ALL
SELECT t1.quantity,
       t2.product_name,
       t2.list_price,
       t1.quantity * t2.list_price AS total_price
FROM order_02_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id)
ORDER BY total_price DESC
LIMIT 5;

