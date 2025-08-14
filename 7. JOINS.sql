-- JOINS

-- In SQL, joins are used to combine rows from two or more tables based on a related column between them.
-- They allow you to query data that is spread across multiple tables as if it were in a single table.


SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;



-- Inner Joins

-- An INNER JOIN in SQL is a type of join that returns only the rows
-- where there is a match in both tables based on a specified condition.

-- If there are something similar in both tables, then we have to write them with table_name. or by using aliases.

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id           # can be read as based on
;


-- OUTER JOINS


-- LEFT JOINS

-- Returns all rows from the left table and the matched rows from the right table.
-- If there’s no match, NULLs are returned for the right table’s columns.

SELECT *
FROM employee_demographics AS dem          # FROM will be our left table and LEFT JOIN will be our right table
LEFT JOIN employee_salary AS sal             
	ON dem.employee_id = sal.employee_id
;

-- RIGHT JOINS

-- Returns all rows from the right table and the matched rows from the left table.
-- If there’s no match, NULLs are returned for the left table’s columns.

SELECT *
FROM employee_demographics AS dem         # FROM will be our left table and RIGHT JOIN will be our right table
RIGHT JOIN employee_salary AS sal         # It will take everything from employee_salary table but if there is no match in employee_demographics it will just have null
	ON dem.employee_id = sal.employee_id
;


-- SELF JOIN

-- A SELF JOIN is when a table is joined with itself as if it were two different tables.

-- We use it when the rows in a table are related to other rows within the same table — for example,
-- in hierarchical data (employees & managers, categories & subcategories, etc.).


-- How it Works

-- You give the same table two different aliases (like a and b) so SQL treats them as separate tables in the query.
-- You then join them using a condition that makes sense for the relationship within the table.


SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;


-- Joining multiple tables together


-- You can join as many tables as needed — as long as there’s a logical link between them.

-- As we can notice that employee_demographics does not have any column common with parks table but we indirectly
-- joined the employee_demographics table with parks table. As employee_demographics and employee_salary have many 
-- columns in common hence they are joined and salary table is joined with parks table as there is some column 
-- common in both salary table and parks table.


SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id        # We cannot join parks_departments with employee_demographics as there is no common column present. And employee_salary has dep_id as common,
                                             #  we can notice name of column is not same but the value of column in salary table and parks table is same.
;

SELECT *
FROM parks_departments     # parks_departments is a reference table which do not have anything duplicate