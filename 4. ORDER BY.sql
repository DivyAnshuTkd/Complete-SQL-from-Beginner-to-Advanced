-- GROUP BY (SQL)

-- Used to group rows with the same values in specified columns.

-- Often used with aggregate functions (COUNT, SUM, AVG, MAX, MIN) to perform calculations per group.

-- Columns in SELECT must be in GROUP BY or be the result of an aggregate function.

-- WHERE filters rows before grouping; HAVING filters after grouping.


SELECT *
FROM employee_demographics;


SELECT gender       # if we are not using any aggregate functions when using GROUP BY, then in that case SELECT statement must match with GROUP BY  
FROM employee_demographics
GROUP BY gender     
;


SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender     
;


SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary     
;


-- Aggregate functions

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- ORDER BY

-- The ORDER BY clause sorts the result set returned by a SQL query in ascending or descending order based on one or more columns.

-- Purpose
-- Arrange query results in a specific sequence.

-- Can sort by:

-- One column

-- Multiple columns

-- Expressions or functions

-- Default sort order is ascending (ASC).


SELECT *
FROM employee_demographics
ORDER BY first_name DESC
;

-- Selects all columns from employee_demographics
-- Sorts rows first by gender in ascending order (A → Z)
-- Within each gender group, sorts by age in descending order (highest → lowest)

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC
;


-- How SQL Processes ORDER BY age, gender
-- Sort by age first (ascending by default).
-- If two or more rows have the same age, then sort those ties by gender.
-- If every age is unique in your table, gender never actually gets used for sorting — because there are no ties to break.

SELECT *
FROM employee_demographics
ORDER BY age, gender
;



-- ORDER BY with Column Index 

-- You can sort by the position number of a column in the SELECT list.

-- Not good practice because:

-- Less readable — harder for others to understand which column is sorted.
-- Can break easily if the column order in SELECT changes.
-- Best practice → Always use column names or aliases for clarity.

SELECT *
FROM employee_demographics
ORDER BY 5, 4
;

