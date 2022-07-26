--1-Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp_no
		,first_name
		,last_name
FROM employees;
--2-Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT titles
		,from_date
		,to_date
FROM  titles;
--Read the tables
SELECT * FROM employees;
SELECT * FROM  titles;

--3-Create a new table using the INTO clause
--5-Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
SELECT e.emp_no
		,e.first_name
		,e.last_name
		,tl.titles
		,tl.from_date
		,tl.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN titles AS tl
ON e.emp_no = tl.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no ASC;
--CHECKING TABLE
SELECT * FROM employees;
SELECT * FROM retirement_titles

--9- Copy the query from the Employee_Challenge_starter_code.sql 
--10-Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
--11-Exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.
--12-Create a Unique Titles table using the INTO clause.
--13-Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title.
--14-Export the Unique Titles table
SELECT DISTINCT ON (retitle.emp_no) retitle.emp_no
					,retitle.first_name
					,retitle.last_name
					,retitle.titles
INTO unique_titles
FROM retirement_titles AS retitle
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC;

SELECT COUNT(unique_titles)
FROM unique_titles;

SELECT * FROM unique_titles;
SELECT * FROM retirement_titles;

--16-Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
--17-First, retrieve the number of titles from the Unique Titles table.
--18-Then, create a Retiring Titles table to hold the required information.
--19-Group the table by title, then sort the count column in descending order.
--20-Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

SELECT COUNT(utl.titles), utl.titles
INTO retiring_titles
FROM unique_titles AS utl
GROUP BY titles
ORDER BY COUNT(utl.titles) DESC;

SELECT *FROM retiring_titles;
select * from departments;
select * from titles;

--1-Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
--2-Retrieve the from_date and to_date columns from the Department Employee table.
--3-Retrieve the title column from the Titles table.
--4-Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
--5-Create a new table using the INTO clause.
--6-Join the Employees and the Department Employee tables on the primary key.
--7-Join the Employees and the Titles tables on the primary key.
--8-Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
--9-Order the table by the employee number.
--10-Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.

SELECT DISTINCT ON (e.emp_no) e.emp_no
					,e.first_name
					,e.last_name
					,e.birth_date
					,de.from_date
					,de.to_date
					,ti.titles
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
	ON(e.emp_no = de.emp_no)
INNER JOIN titles as ti
	ON(e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND de.to_date = '9999-01-01'
GROUP BY (e.emp_no), de.from_date, de.to_date, ti.titles
ORDER BY emp_no;

SELECT * FROM mentorship_eligibility;

--provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
--Determine the number of retired by departments name
SELECT COUNT(ce.emp_no), de.dept_no, d.dept_name
INTO retiring_dept_count
FROM current_emp as ce
INNER JOIN dept_emp as de
	ON ce.emp_no = de.emp_no
INNER JOIN departments AS d
	ON de.dept_no = d.dept_no
GROUP BY de.dept_no, d.dept_name;
--checking table
SELECT * FROM retiring_dept_count;


SELECT DISTINCT ON (e.emp_no) e.emp_no
		,e.first_name
		,e.last_name
		,e.birth_date
		,ti.titles
		,sa.salary
INTO retiring_salaries
FROM employees AS e
INNER JOIN salaries AS sa
	ON e.emp_no = sa.emp_no
INNER JOIN titles AS ti
	ON e.emp_no = ti.emp_no
WHERE birth_date BETWEEN '1965-01-01' AND '1965-12-31'

--checking table
SELECT *FROM retiring_salaries;
