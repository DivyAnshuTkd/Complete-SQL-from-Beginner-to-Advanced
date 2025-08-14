-- Limit

-- Purpose: Restricts the number of rows returned by a query.

-- Syntax:

-- LIMIT count → return first count rows.
-- LIMIT count OFFSET start → skip start rows, then return count rows.

-- MySQL shortcut: LIMIT start, count (start = offset).
-- Common use: Pagination, top-N results.
-- Order matters: Often used with ORDER BY to control which rows appear first.



-- What happens:
-- Sorts employees from oldest to youngest.
-- Returns only the first 2 rows from the sorted result.
-- 📌 Use case: Show “Top 2 oldest employees.”

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2
;


-- What happens:
-- Skips the first 2 rows.
-- Returns the next 3 rows.
-- 📌 Use case: Show “employees ranked 6–10 by age.”


SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2,3
;


-- Aliasing


-- Purpose: Give a temporary name to a column or table in a query.
-- Benefits:

-- Makes column names shorter or more readable.
-- Useful when using functions or calculations.
-- Helps when working with multiple tables in joins.


SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;


-- Remember: Alias exists only during query execution — it doesn’t rename 
-- the actual column or table in the database.