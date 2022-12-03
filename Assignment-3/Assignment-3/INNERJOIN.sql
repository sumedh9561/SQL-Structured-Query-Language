Problem 1 : Create an INNER JOIN of tables:
* product
* category
Use the category_id column to join the tables. Notice that the category_id 
column in the product table contains NULL values.
Display all columns in the output table.

SELECT
  *
FROM
  product AS t1
INNER JOIN category AS t2 ON t1.category_id = t2.category_id;



Problem 2 :
Create an INNER JOIN of tables:
* product
* category
Use the category_id column to join the tables.
Display the following columns in the output table:
* product_id
* product_name
* list_price
* category_name

SELECT
  t1.product_id,
  t1.product_name,
  t1.list_price,
  t2.category_name
FROM
  product AS t1
INNER JOIN category AS t2 ON t1.category_id = t2.category_id;



Problem 3 :
The following query is given:

SELECT
  t1.product_id,
  t1.product_name,
  t1.list_price,
  t2.category_name
FROM
  product AS t1
INNER JOIN category AS t2 ON t1.category_id = t2.category_id;

Modify the given query to group the data on the category_name level. Calculate the number of products for each category and assign an alias number_of_products.
The output table should contain two columns:
category_name
number_of_products
Sort output table in descending order by number_of_products.


SELECT
  t2.category_name,
  COUNT(*) AS number_of_products
FROM
  product AS t1
INNER JOIN category AS t2 ON t1.category_id = t2.category_id
GROUP BY
  t2.category_name
ORDER BY
  number_of_products DESC;