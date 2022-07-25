# Pewlett-Hackard-Analysis
## Overview of the analysis
In this project, we are helping a company named Pewlett Hackard, how to set data that offer retirement package for those who meet certain criteria and which position need to be fulled in in the future. We will be working with a few CSV files, visualize and analyze the data in the table. We will be determining the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Finally we will write a report that summarizes our analysis and helps prepare Bobby’s manager as many current employees reach retirement age. 
## Resouces
  - PgAdmin
  - Postgre SQL
  - Python.
### Results
    1- In our analysis, we first had to create a table called "Retirement_titles". This table was created by joining our "employees" table and "titles" table. The new table allow us to visualize data for the employees first and last name, titles, from date and to_date for employees born from '1952-01-01' to '1955-12-31'. 
    2- Next, we created another table called "Unique_tittles" by using the "DISTINCT ON" function, this allow us to remove any duplicate employees name who changed department or had a promotion to get a clean data.
    3- We created another table named "retiring_titles", This table allow us to know the total count of retiring employees base on the titles. we did that by using the "SELECT COUNT" function by "GROUP BY" and "ORDER BY" descendence. 
    4-Finally, we ended up creating our last table called "Mentorship_eligibility". We first joined three tables: employees, dept_emp and titles table. we did use "DISTINCT ON" function again to make sure no name will appear as duplicate. we then filter the data would only show employees born from '1965-01-01' to '1965-12-31' and employees only from '9999-01-01' so that the data will show current.
    (PLEASE SEE IMAGES ATTACHED)
## Summary
### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
After our analysis, we realize that 6 roles need to be filled . The total count of retiring employees is 72,458.(see details in the cvs images attached.) 
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
The total mentorship_eligibility employees is 1,549 while the the current employees total is 33,118. We think that the number of coach is very small compare to the total of current employees. 

### Provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
  1- we determined the count of retiring employees based on the department name. Our data shows that the Development and Sales departments has highest number of retiring employees.We created a table name retirint_dept_count by joining current_emp, departments and dept_emp tables. Then GROUP BY dept_no and dept_name.
  2- 
