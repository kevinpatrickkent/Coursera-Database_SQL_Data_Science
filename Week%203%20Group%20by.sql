SELECT * FROM EMPLOYEES;

SELECT DEP_ID, COUNT(DEP_ID) AS FREQUENCY, AVG(SALARY) AS AVG_SALARY 
FROM EMPLOYEES
GROUP BY DEP_ID 
HAVING COUNT(DEP_ID) <= 3
ORDER BY AVG_SALARY;