
Problem 1 : Take a look at the following tables:
* order_01_2021
* order_02_2021
These tables store orders for two consecutive months. Combine these tables into 
one using the UNION operator. In the output table, display all columns (use 
placeholder for all columns).


SELECT * FROM order_01_2021
UNION
SELECT * FROM order_02_2021;




Problem 2 : Take a look at the tables:
* order_01_2021
* order_02_2021
The tables store orders for two consecutive months. Combine these tables into 
one using the UNION operator. Display all columns in the output table by 
passing names directly in the query. Sort the result by decreasing value for 
the quantity column.


SELECT
  order_id,
  product_id,
  quantity
FROM
  order_01_2021
UNION
SELECT
  order_id,
  product_id,
  quantity
FROM
  order_02_2021
ORDER BY
  quantity DESC;



Problem 3 : Create a LEFT JOIN of tables:
* order_01_2021
* product
using the product_id column. Display all columns in the output table.


SELECT
  *
FROM
  order_01_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id;



Problem 4 : Create a LEFT JOIN of tables:
* order_01_2021
* product
using the product_id column. In the output table, display the following columns:
* order_id
* quantity
* product_name
* list_price

SELECT
  t1.order_id,
  t1.quantity,
  t2.product_name,
  t2.list_price
FROM
  order_01_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id;




Problem 5 : The following query is given:

SELECT
  t1.order_id,
  t1.quantity,
  t2.product_name,
  t2.list_price
FROM
  order_01_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id;

Using the UNION operator, create a query that displays unique names of products 
sold in January and February (tables order_01_2021 and order_01_2021).



SELECT
  t2.product_name
FROM
  order_01_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id
UNION
SELECT
  t2.product_name
FROM
  order_02_2021 AS t1
LEFT JOIN product AS t2 ON t1.product_id = t2.product_id;