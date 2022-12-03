Problem 1 : Create a LEFT JOIN of tables:
department
location
using the location_id column. Display all columns in the result.


SELECT * 
FROM department AS t1
LEFT JOIN location AS t2 ON t1.location_id = t2.location_id;



Problem 2 : Create a LEFT JOIN of tables:
* department
* location

using the location_id column. Display the following columns in the output table:
* department_id
* department_name
* street_address
* city


SELECT
  t1.department_id,
  t1.department_name,
  t2.street_address,
  t2.city
FROM
  department AS t1
LEFT JOIN location AS t2 ON t1.location_id = t2.location_id;




Problem 3 : Create a LEFT JOIN (in the given order) of tables:
* department
* location
* country
using the location_id and country_id columns respectively. Display all columns 
in the result table.


SELECT
  *
FROM
  department AS t1
LEFT JOIN location AS t2 ON t1.location_id = t2.location_id
LEFT JOIN country AS t3 ON t2.country_id = t3.country_id;



Problem 4 : Create a LEFT JOIN of tables:
* department
* location
* country
using the location_id and country_id columns respectively. In the result table, 
display the columns:
* department_id
* department_name
* street_address
* city
* country_name

SELECT
  t1.department_id,
  t1.department_name,
  t2.street_address,
  t2.city,
  t3.country_name
FROM
  department AS t1
LEFT JOIN location AS t2 ON t1.location_id = t2.location_id
LEFT JOIN country AS t3 ON t2.country_id = t3.country_id;



Problem 5 : Create a LEFT JOIN of tables:
* employee
* job
using the job_id column. Display all columns in the result table.

SELECT * 
FROM employee AS t1
LEFT JOIN job AS t2 ON t1.job_id = t2.job_id;


Problem 6 : Create a LEFT JOIN of tables:
* employee
* job
using the job_id column. In the output table, display the following columns:
* employee_id
* email
* salary
* job_title

SELECT
  t1.employee_id,
  t1.email,
  t1.salary,
  t2.job_title
FROM
  employee AS t1
LEFT JOIN job AS t2 ON t1.job_id = t2.job_id;



Problem 7 : The following query is given:

SELECT
  t1.employee_id,
  t1.email,
  t1.salary,
  t2.job_title
FROM
  employee AS t1
LEFT JOIN job AS t2 ON t1.job_id = t2.job_id;

Modify the above query to extract the rows with salary greater than 8000. Sort 
the result in descending order by salary.

SELECT
  t1.employee_id,
  t1.email,
  t1.salary,
  t2.job_title
FROM
  employee AS t1
  LEFT JOIN job AS t2 ON t1.job_id = t2.job_id
WHERE
  t1.salary > 8000
ORDER BY
  t1.salary DESC;


Problem 8 : Create a LEFT JOIN of tables:
* employee
* job
* department
using the job_id and department_id columns respectively. In the output table, display the following columns:
* employee_id
* email
* salary
* job_title
* department_name


SELECT
  t1.employee_id,
  t1.email,
  t1.salary,
  t2.job_title,
  t3.department_name
FROM
  employee AS t1
LEFT JOIN job AS t2 ON t1.job_id = t2.job_id
LEFT JOIN department AS t3 ON t1.department_id = t3.department_id;




Problem 9 : The following query is given:

SELECT
  t1.employee_id,
  t1.email,
  t1.salary,
  t2.job_title,
  t3.department_name
FROM
  employee AS t1
LEFT JOIN job AS t2 ON t1.job_id = t2.job_id
LEFT JOIN department AS t3 ON t1.department_id = t3.department_id;

Modify the above query. Group the data at the department_name level and calculate the number of employees for each department. Assign the alias number_of_employees to the result. Sort the output table by decreasing number_of_employees.
The output table should contain two columns:
* department_name
* number_of_employees


SELECT
  t3.department_name,
  COUNT(*) AS number_of_employees
FROM
  employee AS t1
  LEFT JOIN job AS t2 ON t1.job_id = t2.job_id
  LEFT JOIN department AS t3 ON t1.department_id = t3.department_id
GROUP BY
  t3.department_name
ORDER BY
  number_of_employees DESC;



Problem 10 : The following query is given:

SELECT
  t1.employee_id,
  t1.email,
  t1.salary,
  t2.job_title,
  t3.department_name
FROM
  employee AS t1
LEFT JOIN job AS t2 ON t1.job_id = t2.job_id
LEFT JOIN department AS t3 ON t1.department_id = t3.department_id;

Modify the above query. Group the data on the job_title level and calculate the number of employees for each position. Assign the alias number_of_employees to the result. Also, find the average salary for the position and assign the alias avg_salary. Sort the result by descending avg_salary.
The output table should contain three columns:
* job_title
* number_of_employees
* avg_salary


SELECT
  t2.job_title,
  COUNT(*) AS number_of_employees,
  AVG(t1.salary) AS avg_salary
FROM
  employee AS t1
  LEFT JOIN job AS t2 ON t1.job_id = t2.job_id
  LEFT JOIN department AS t3 ON t1.department_id = t3.department_id
GROUP BY
  t2.job_title
ORDER BY
  avg_salary DESC;



Problem 11 : Create a LEFT JOIN of tables:
* location
* country
using the country_id column. Display all columns in the output table.

SELECT
  *
FROM
  location AS t1
LEFT JOIN country AS t2 ON t1.country_id = t2.country_id;




Problem 12 : Create a LEFT JOIN of tables:
* location
* country
using the country_id column.
In the output table, display the following columns:
* location_id
* street_address
* city
* country_name
Sort the output table in ascending order by country_name.


SELECT
  location_id,
  street_address,
  city,
  country_name
FROM
  location AS t1
  LEFT JOIN country AS t2 ON t1.country_id = t2.country_id
ORDER BY
  country_name;


