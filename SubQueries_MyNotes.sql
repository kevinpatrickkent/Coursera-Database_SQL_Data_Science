/*Exercise:
Problem:

Execute a failing query (i.e. one which gives an error) to retrieve all 
employees records whose salary is lower than the average salary.
*/

SELECT * FROM EMPLOYEES;

-- Can't do it this way...
SELECT F_NAME, L_NAME, SALARY FROM EMPLOYEES WHERE SALARY < AVG(SALARY);

/* Problem:

Execute a working query using a sub-select to retrieve all 
employees records whose salary is lower than the average salary.
*/

-- Have to do this weird sub-query thing...
SELECT F_NAME, L_NAME, SALARY FROM EMPLOYEES WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);

/* Problem:

Execute a failing query (i.e. one which gives an error) to 
retrieve all employees records with EMP_ID, SALARY and maximum 
salary as MAX_SALARY in every row.
*/

-- Weird thing to do, but could need it sometimes I guess
-- Also this seems like a problem with SQL. What would it
-- break if you changed this and allowed this action?
-- I suppose it would lead to people not realizing they did
-- this weird thing by mistake.

SELECT EMP_ID, SALARY, MAX(SALARY) FROM EMPLOYEES;

-- Works if you do a sub-query
SELECT EMP_ID, SALARY, (SELECT MAX(SALARY) FROM EMPLOYEES) FROM EMPLOYEES;

-- Here's what I did..
SELECT EMP_ID, F_NAME, L_NAME, SEX, JOB_ID, MANAGER_ID, DEP_ID FROM EMPLOYEES;

-- And here's what they did in the solution.
SELECT * from ( select EMP_ID, F_NAME, L_NAME, DEP_ID from employees) AS EMP4ALL;

-- I guess that lets you do the *, but otherwise works the same.

