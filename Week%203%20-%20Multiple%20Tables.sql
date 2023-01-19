/*Objectives
After completing this lab you will be able to:

Write SQL queries that access more than one table
Compose queries that access multiple tables using a nested statement in the WHERE clause
Build queries with multiple tables in the FROM clause
Write Implicit Join queries with join criteria specified in the WHERE clause
Specify aliases for table names and qualify column names with table aliases
NOTE : Make sure that you are using the CSV file and datasets from the same instruction file.
Instructions
When you approach the exercises in this lab, follow the instructions to run the queries on Db2:

Go to the Resource List of IBM Cloud by logging in where you can find the Db2 service instance that you created in a previous lab under Services section. Click on the Db2-xx service. Next, open the Db2 Console by clicking on Open Console button. Click on the 3-bar menu icon in the top left corner and go to the Run SQL page. The Run SQL tool enables you to run SQL statements.

If needed, follow Hands-on Lab : Sign up for IBM Cloud, Create Db2 service instance and Get started with the Db2 console*/

/*Exercise 1: Accessing Multiple Tables with Sub-Queries
Problem:

Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.*/

SELECT * FROM EMPLOYEES WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS);

/*Problem:

Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.*/

SELECT * FROM EMPLOYEES WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS WHERE JOB_TITLE = 'Jr. Designer');

/*Problem:

Retrieve JOB information and who earn more than $70,000.*/

SELECT * FROM JOBS WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE SALARY > 70000);

/*Problem:

Retrieve JOB information and whose birth year is after 1976.*/
-- I'm not really sure what they want from me here.  Do they want the JOB information
-- from the JOBS database for everyone that was born after 1976?
-- Peaked at the output and it is only outputs from the JOBS database so I'll do it 
-- this way:

SELECT * FROM JOBS WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE YEAR(B_DATE) > '1976');

-- OK that got what they wanted - question seemed a little unclear to me

/*Problem:

Retrieve JOB information for female employees whose birth year is after 1976.*/

SELECT * FROM JOBS WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE YEAR(B_DATE) > '1976' AND SEX = 'F');