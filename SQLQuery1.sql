CREATE TABLE Department(
dep_id INTEGER PRIMARY KEY,
dep_name VARCHAR(20),
dep_location VARCHAR(15)
);



CREATE TABLE salary_grade(

grade INTEGER,
min_salary INTEGER,
max_salary INTEGER
);


CREATE TABLE employees(
	emp_id INTEGER,
	emp_name VARCHAR(15),
	job_name VARCHAR(10),
	manager_id INTEGER,
	hire_date DATE,
	salary DECIMAL(10, 2),
	commission DECIMAL(7,2),
	dep_id INTEGER,
	Foreign key(dep_id)
	REFERENCES department(dep_id),
);

insert into department(dep_id,dep_name,dep_location)
Values
   (1001 , 'FINANCE' , 'SYDNEY'),
   (2001 ,'AUDIT' ,'MELBOURNE'),
   (3001 ,'MARKETING'  , 'PERTH'),
   (4001 ,'PRODUCTION' , 'BRISBANE');

insert into salary_grade(grade,min_salary,max_salary)
values
    ( 1 ,     800 ,    1300),
    ( 2 ,    1301 ,    1500),
    ( 3 ,    1501 ,    2100),
    ( 4 ,    2101 ,    3100),
    ( 5 ,    3101 ,    9999);


	insert into employees(emp_id , emp_name , job_name  , manager_id , hire_date  , salary  , commission , dep_id)
values
 ( 68319 ,'KAYLING', 'PRESIDENT'  ,  null  ,' 1991-11-18' ,6000.00, null,1001),
 ( 66928 ,' BLAZE ' ,' MANAGER '  ,  68319 ,' 1991-05-01', 2750.00 , null,3001),
 ( 67832 ,' CLARE ' ,' MANAGER '  ,  68319 ,' 1991-06-09', 2550.00 , null,1001),
 ( 65646 ,' JONAS ' ,' MANAGER '  ,  68319 ,' 1991-04-02', 2957.00 , null,2001),
 ( 67858 ,' SCARLET','ANALYST'  ,  65646 ,' 1997-04-19', 3100.00 , null,2001),
 ( 69062 ,' FRANK'  ,'ANALYST'  ,  65646 ,' 1991-12-03', 3100.00 , null,2001),
 ( 63679 ,' SANDRIN',' CLERK   '  ,  69062 ,' 1990-12-18',  900.00 , null,2001),
 ( 64989 ,' ADELYN' ,' SALESMAN'  ,  66928 ,' 1991-02-20', 1700.00 , 400.00 ,3001),
 ( 65271 ,' WADE  ' ,' SALESMAN'  ,  66928 ,' 1991-02-22', 1350.00 , 600.00 ,3001),
 ( 66564 ,' MADDEN' ,' SALESMAN'  ,  66928 ,' 1991-09-28', 1350.00 , 1500.00,3001),
 ( 68454 ,' TUCKER' ,' SALESMAN'  ,  66928 ,' 1991-09-08', 1600.00 , 0.00 ,  3001),
 ( 68736 ,' ADNRES' ,' CLERK   '  ,  67858 ,' 1997-05-23', 1200.00 , null,2001),
 ( 69000 ,' JULIUS' ,' CLERK   '  ,  66928 ,' 1991-12-03', 1050.00 , null,3001),
 ( 69324 ,' MARKER' ,' CLERK   '  ,  67832 ,' 1992-01-23', 1400.00 , null,1001);

 TRUNCATE TABLE employees;

 ---Q1.Return complete information about the employees.
 SELECT * FROM employees;

 ---Q2.Write a SQL query to find the salaries of all employees. Return salary.
 SELECT salary FROM employees;

 ---Q3.Write a SQL query to find the unique designations of the employees.Return job name.
 SELECT DISTINCT job_name FROM employees;

 ---Q4.Write a SQL query to list the employees’ name, increased their salary by 15%.
 SELECT emp_name, salary * 1.15 AS increased_salary FROM employees;

 ---Q5.Write a SQL query to list the employee's name and job name as a format of "Employee & Job".
 SELECT CONCAT(emp_name, ' & ', job_name) AS "Employee & Job" FROM employees;


 ---Q6.Write a SQL query to find those employees with hire date in the format like February 22, 1991. Return employee ID, employee name, salary, hire date.
SELECT 
emp_id, emp_name AS employee_name, salary, hire_date
FROM employees
WHERE FORMAT(hire_date, 'MMMM dd, yyyy') = 'February 22, 1991';

---Q7.Write a SQL query to count the number of employees who have total income more than 2200.
SELECT COUNT(*)
FROM employees
WHERE salary + COALESCE(commission, 0)* salary > 2200;

---Q8. Write a SQL query to find the unique jobs with their corresponding department id.
SELECT job_name, dep_id
FROM employees
GROUP BY job_name, dep_id;

---Q9. Write a SQL query to find those employees who do not belong to the department 2001. Return complete information about the employees.
SELECT *
FROM employees
WHERE dep_id != 2001;

---Q10.Write a SQL query to find those employees who joined before 1991. Return complete information about the employees.
SELECT *
FROM employees
WHERE hire_date < '1991-01-01';

---Q11. Write a SQL query to calculate the average salary of employees who work as analysts. Return average salary.
SELECT AVG(salary) as avg_salary
FROM employees
WHERE job_name = 'ANALYST';

---Q12.Write a SQL query to find the details of the employees who's name start start with B or end with E.
SELECT *
FROM employees
WHERE emp_name LIKE 'B%' OR emp_name LIKE '%E';

---Q13. Write a SQL query to find the details of the employees who's department name start start with B or end with E.
SELECT *
FROM employees e
JOIN department d ON e.dep_id = d.dep_id
WHERE d.dep_name LIKE 'B%' OR d.dep_name LIKE '%E';

---Q14.Write a SQL query to find the details of the employees who's department location start start with F or end with N.
SELECT
employees.*
FROM
employees
JOIN department ON employees.dep_id = department.dep_id
WHERE
department.dep_location LIKE 'F%' OR department.dep_location LIKE '%N';

---Q15.Write a SQL query to identify employees whose commissions exceed their salaries. Return complete information about the employees, department location and department name.
SELECT employees.*, department.dep_location, department.dep_name
FROM employees
JOIN department ON employees.dep_id = department.dep_id
WHERE employees.salary < employees.commission;

---Q16.Write a SQL query to identify those employees whose salaries exceed 3000 after receiving a 25% salary increase.
SELECT emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id, (salary * 1.25) as increased_salary
FROM employees
WHERE (salary * 1.25) > 3000;

---Q17.Write a SQL query to find out which employees joined in the month of January. Return complete information about the employees.
	SELECT * 
FROM employees 
WHERE MONTH(hire_date) = 1;

---Q18. Write a SQL query to separate the names of employees and their managers by the string 'works for'.
SELECT CONCAT( em.emp_name,'  WORKS FOR  ',mn.emp_name) AS "EMP & MAN" FROM employees em, employees mn
WHERE em.manager_id = mn.emp_id

---Q19. Write a SQL query to find those employees whose designation is ‘CLERK’. Return complete information about the employees.
SELECT *
FROM employees
WHERE job_name = ' CLERK ';

---Q20.Write a SQL query to identify employees with more than 27 years of experience. Return complete information about the employees.
SELECT *
FROM employees
WHERE (YEAR(GETDATE()) - YEAR(hire_date)) > 27

---Q21. Write a SQL query to find those employees whose salaries are less than 3500. Return complete information about the employees.
SELECT *
FROM employees
WHERE salary < 3500;

---Q22.Write a SQL query to find the employee whose designation is ‘ANALYST’. Return employee name, job name and salary.
SELECT*
, job_name, salary
FROM employees
WHERE job_name = 'ANALYST';

---Q23.Write a SQL query to identify those employees who joined the company in 1991. Return complete information about the employees.
SELECT *
FROM employees
WHERE YEAR(hire_date) = 1991;

---Q24.Write a SQL query to identify those employees who joined the company after 1991. Return complete information about the employees.
SELECT *
FROM employees
WHERE hire_date > '1991-12-31'

---Q25. Write a SQL query to find those employees who joined before 1st April 1991. Return employee ID, employee name, hire date and salary.
SELECT emp_id, emp_name, hire_date, salary
FROM employees
WHERE hire_date < '1991-04-01';


---Q26.Write a SQL query identify the employees who do not report to a manager. Return employee name, job name.
SELECT employees.emp_name AS 'Employee Name', employees.job_name AS 'Job Name'
FROM employees
WHERE employees.manager_id IS NULL;

---Q27.Write a SQL query to find the employees who joined on the 1st of May 1991. Return complete information about the employees.
SELECT *
FROM employees
WHERE hire_date = '1991-05-01';

---Q28. Write a SQL query to identify the experience of the employees who work under the manager whose ID number is 68319. Return employee ID, employee name, salary, experience
SELECT emp_id,
       emp_name,
       salary,
       age(CURRENT_DATE, hire_date) "Experience"
FROM employees
WHERE manager_id=68319;9;


SELECT e1.emp_id, e1.emp_name, e1.salary, DATEDIFF(YEAR, e1.hire_date, GETDATE()) as experience
FROM Employees e1
JOIN Employees e2 ON e1.manager_id = e2.emp_id
WHERE e2.emp_id = 68319

---Q29.Write a SQL query to find out which employees earn more than 100 per day as a salary. Return employee ID, employee name, salary, and experience.
SELECT emp_id, emp_name, salary
FROM employees
WHERE salary / 30 > 100;

---Q30.Write a SQL query to identify those employees who retired after 31-Dec-99, completing eight years of service. Return employee name.
SELECT emp_name
FROM employees
WHERE hire_date < '1991-12-31' AND DATEDIFF(year, hire_date, GETDATE()) >= 8;

---Q31. Write a SQL query to identify the employees whose salaries are odd. Return complete information about the employee.
SELECT *
FROM employees
WHERE FLOOR(salary / 2) * 2 != salary;

---Q32. Write a SQL query to identify employees whose salaries contain only three digits. Return complete information about the employees.
SELECT *
FROM employees
WHERE salary BETWEEN 100 AND 999;

--Q33. Write a SQL query to find those employees who joined in the month of APRIL. Return complete information about the employees
SELECT *
FROM employees
WHERE MONTH(hire_date) = 4;

---Q34.Write a SQL query to find out which employees joined the company before the 19th of the month. Return complete information about the employees.
SELECT * 
FROM employees 
WHERE DAY(hire_date) < 19;

---Q35.Write a SQL query to identify those employees who have been working as a SALESMAN and month portion of the experience is more than 10. Return complete information about the employees.
SELECT *
FROM employees
WHERE job = 'SALESMAN'
AND EXTRACT(MONTH FROM SYSDATE - hire_date) >= 10;

---Q36.Write a SQL query to find those employees of department id 3001 or 1001 and joined in the year 1991. Return complete information about the employees.
SELECT *
FROM employees
WHERE (dep_id = 3001 OR dep_id = 1001)
AND YEAR(hire_date) = 1991;
	
---Q37.Write a SQL query to find the employees who are working for the department ID 1001 or 2001. Return complete information about the employees.
SELECT *
FROM employees
WHERE dep_id IN (1001, 2001);

---Q38. Write a SQL query to find those employees whose designation is ‘CLERK’ and work in the department ID 2001. Return complete information about the employees.
SELECT * 
FROM employees 
WHERE job_name = 'CLERK' 
AND dep_id = 2001;

---Q39.Write a SQL query to find those employees who are either CLERK or MANAGER. Return complete information about the employees.
SELECT *
FROM employees
WHERE job_name = 'CLERK' OR job_name = 'MANAGER';


---Q40.Write a SQL query to identify those employees who joined in any month other than February. Return complete information about the employees.
SELECT *
FROM employees
WHERE MONTH(hire_date) != 2

