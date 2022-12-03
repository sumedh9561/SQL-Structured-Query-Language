Problem 1 : Using the INTERSECT operator, display all names of products that were sold in 
January and February.


SELECT
  t2.product_name
FROM
  order_01_2021 AS t1
  LEFT JOIN product AS t2 ON t1.product_id = t2.product_id
INTERSECT
SELECT
  t2.product_name
FROM
  order_02_2021 AS t1
  LEFT JOIN product AS t2 ON t1.product_id = t2.product_id;