-- UNIONS

-- In SQL, a UNION is used to combine the results of two or more SELECT queries into a single result set.
-- Unlike JOIN (which combines columns from related tables), UNION combines rows from different queries.


-- Key Rules of UNION

-- Same number of columns in all SELECT queries.
-- Same data types (or compatible types) in corresponding columns.
-- The columns don’t need to have the same names, but it’s better if they are in the same order.
-- By default, UNION removes duplicate rows. Use UNION ALL to keep duplicates.

SELECT first_name, last_name 
FROM employee_demographics
UNION DISTINCT                      # UNION is by distinct by default
SELECT first_name, last_name
FROM employee_salary;

-- UNION ALL

-- UNION ALL in SQL is just like UNION, but it keeps duplicates instead of removing them.

SELECT first_name, last_name 
FROM employee_demographics
UNION ALL                      
SELECT first_name, last_name
FROM employee_salary;



-- We have three SELECT statements using two separate UNION statements in below example


SELECT first_name, last_name, 'Old MAN' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION 
SELECT first_name, last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION 
SELECT first_name, last_name, 'Highly Paid Employee' AS Label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name       # by this query we can get the name of employees who comes both categories easily
;

# Above is an example of finding the employees who are old and highly paid both