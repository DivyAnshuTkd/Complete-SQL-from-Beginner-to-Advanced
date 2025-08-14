-- String Functions


-- String functions in SQL are built-in functions used to perform operations on text (string) data.
-- They help you manipulate, search, modify, extract, or format string values stored in your database.


-- LENGTH (Returns the number of characters in a string)

-- Example of LENGTH usage can be in data cleaning by removing the phone numbers whose length is not equal to 10

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)   #  Here, the second column is LENGTH(first_name).
										# This means the output will be sorted by name length (shortest to longest, by default).
FROM employee_demographics
ORDER BY 2
;

-- UPPER and LOWER (Converts text to upper or lower case.)

SELECT UPPER('sky');
SELECT LOWER('SKY');


SELECT first_name, UPPER(first_name)   
FROM employee_demographics;


-- Trim (Removes spaces (or other characters).)

SELECT TRIM('      sky       ');

-- LTRIM() (Removes spaces (or other characters) from left side.)

SELECT LTRIM('      sky   ');

-- RTRIM() (Removes spaces (or other characters) from right side.)

SELECT RTRIM('      sky   ');



-- SUBSTRING() / SUBSTR()    (Extracts part of a string.)

-- LEFT() / RIGHT()          (Returns the leftmost or rightmost characters.)

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2),     # (name of column, starting index of first_name, total number of characters including character at starting index)
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;


-- REPLACE()   (Replaces part of a string.)

SELECT first_name, REPLACE(first_name, 'a', 'z')    # (String which need changes, character to be replaced, character to be replaced with.)
FROM employee_demographics;


-- LOCATE() is a string function that finds the position of a substring inside another string.

-- Return Value

-- Returns the position (1-based index) where the substring first appears.
-- Returns 0 if the substring is not found.


SELECT LOCATE('x', 'Alexander');   

SELECT first_name, LOCATE('An' , first_name)     # LOCATE(substring, string, [start_position]  this is (optional) → Where to start searching (default = beginning).)
FROM employee_demographics; 


-- CONCAT   (Joins strings together.)

SELECT first_name, last_name,
CONCAT(first_name,'  ',last_name) AS full_name
FROM employee_demographics; 


