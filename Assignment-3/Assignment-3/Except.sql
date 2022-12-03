Problem 1 : Using the EXCEPT operator, display all names of products that were sold in 
January but not in February.


SELECT
  t2.product_name
FROM
  order_01_2021 AS t1
  LEFT JOIN product AS t2 ON t1.product_id = t2.product_id
EXCEPT
SELECT
  t2.product_name
FROM
  order_02_2021 AS t1
  LEFT JOIN product AS t2 ON t1.product_id = t2.product_id;



Problem 2 : Display all names of products that were sold in February but not in January 
using the EXCEPT operator.

SELECT
  t2.product_name
FROM
  order_02_2021 AS t1
  LEFT JOIN product AS t2 ON t1.product_id = t2.product_id
EXCEPT
SELECT
  t2.product_name
FROM
  order_01_2021 AS t1
  LEFT JOIN product AS t2 ON t1.product_id = t2.product_id;


