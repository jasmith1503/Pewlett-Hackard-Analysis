-- Module 7.3.1 >> Query Dates


-- Determine Retirement Eligibility
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- *** Skill Drill *** 
-- Create three more queries to search for employees who were born in 1953, 1954, and 1955.
     -- Search of employees boring in the year 1953 
     SELECT first_name, last_name
     FROM employees
     WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';

     -- Search of employees boring in the year 1954
     SELECT first_name, last_name
     FROM employees
     WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';

     -- Search of employees boring in the year 1955
     SELECT first_name, last_name
     FROM employees
     WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';

-- SECTION >> Narrow the Search for Retirement Eligibility
-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
     AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
     
-- SECTION >> Count the Queries
-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
     AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
     
     
-- SECTION >> Create New Tables
-- Creates a new table by using a Select .. From statement and feeding output
-- into a new table called "retirement_info"
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Validate that data is in new table
SELECT * FROM retirement_info;