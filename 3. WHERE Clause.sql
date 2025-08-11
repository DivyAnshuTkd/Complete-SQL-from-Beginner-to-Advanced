-- WHERE Clause

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;


SELECT *
FROM employee_salary
WHERE salary <= 50000
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;

-- AND OR NOT -- Logical Operators

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55   # PEMDAS is applied
;

-- LIKE STATEMENT
-- % (means anything) and _(means specific value)

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'er%'     # it means first_name starting with Jer and then anything after Jer
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%'     # it means in first_name, anything before er and anything after er
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%a%'     # it means in first_name, anything before a and anything after er
;


SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'     # it means in first_name, it should start from a and there must be only two characters after it
;


SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'     # it means in first_name, it should start from a and there must be three characters after it and after 3 characters there can be anything
;


SELECT *                        # Using LIKE statement in date 
FROM employee_demographics
WHERE birth_date LIKE '1989%'     # it means birth_date start with 1989 and anything after that
;