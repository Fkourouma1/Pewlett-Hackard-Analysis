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



Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
