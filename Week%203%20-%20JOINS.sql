-- Exercise 2: Accessing Multiple Tables with Implicit Joins

/* Problem:

Perform an implicit cartesian/cross join between EMPLOYEES and JOBS tables.*/

-- OK got it.  So this broadcasts the values from JOBS to force it to be the
-- same table length as EMPLOYEES.  Why would you want to do this? Also,
-- Why can you do this but not compare the salary to the AVG(SALARY) without
-- a sub-query.  Seems odd to me but I'm a newbie.

SELECT * FROM EMPLOYEES, JOBS;

/*Problem:

Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.*/

-- This ones seems more useful.  Maybe use the other when just exploring databases quickly?
SELECT * FROM EMPLOYEES, JOBS WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;

/*Problem:

Redo the previous query, using shorter aliases for table names.*/

-- Handy little trick
SELECT * FROM EMPLOYEES AS E, JOBS AS J WHERE E.JOB_ID = J.JOB_IDENT;

/*Problem:

Redo the previous query, but specify the fully qualified column names with aliases in the SELECT clause.*/

-- Just picked the ones that would be interesting with real people...
SELECT E.EMP_ID, E.F_NAME, E.L_NAME, E.SALARY, J.MIN_SALARY, J.MAX_SALARY FROM EMPLOYEES AS E, JOBS AS J WHERE E.JOB_ID = J.JOB_IDENT;

