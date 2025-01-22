select * from EMPLOYEE;

/*
 1) List of all employees with first name, last name and Salary
*/
select FIRSTNME, LASTNAME, SALARY from EMPLOYEE;

/*
 2) Same list ordered by last name descending
*/
select FIRSTNME, LASTNAME, SALARY from EMPLOYEE order by LASTNAME;

/*
 3) List of female employees
*/
select FIRSTNME, LASTNAME, SALARY from EMPLOYEE where SEX = 'F';

/*
 4) How many employees in the company ?
*/
select count(*) from EMPLOYEE;

/*
 5) List of employees, first name, last name and total amount of their wages ?
(Wages should be named TOT_WAGES)
 */
SELECT FIRSTNME, LASTNAME, (SALARY + BONUS + COMM) as TOT_WAGES from EMPLOYEE;

/*
 6) What is min, max and average salary for this company ?
 */
SELECT MIN(SALARY) as MIN_SAL, MAX(SALARY) as MAX_SAL, AVG(SALARY) as AVG_SAL FROM EMPLOYEE;

/*
 7) List of every salary per gender
 */
SELECT SEX, AVG(SALARY) as AVG_SAL FROM EMPLOYEE GROUP BY SEX;

/*
 8) Sum of salary par department ordered by department descending
 */
SELECT WORKDEPT, SUM(SALARY) FROM EMPLOYEE GROUP BY WORKDEPT ORDER BY SUM(SALARY) desc;