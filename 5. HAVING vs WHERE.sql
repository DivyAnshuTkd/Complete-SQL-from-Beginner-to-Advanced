-- HAVING vs WHERE

-- WHERE → filters rows before grouping (no aggregates allowed here).
-- HAVING → filters groups after aggregation (aggregates allowed here).

-- Shortcut to remember:

-- WHERE → filter rows (before grouping)
-- HAVING → filter groups (after grouping)

-- aggregation happens after group by


SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;


SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;

-- If you want to filter on those aggregated function columns then you have to use HAVING clause
