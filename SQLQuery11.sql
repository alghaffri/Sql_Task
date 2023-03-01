CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  employee_name VARCHAR(50),
  department_id INT,
  salary INT
);

CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(50),
  location VARCHAR(50),
  manager_id INT
);

INSERT INTO employees (employee_id, employee_name, department_id, salary)
VALUES
  (1, 'John Doe', 1001, 5000),
  (2, 'Jane Doe', 1002, 6000),
  (3, 'Jim Smith', 1001, 6000);
 

INSERT INTO departments (department_id, department_name, location, manager_id)
VALUES
  (1001, 'Marketing', 'New York', 1),
  (1002, 'Sales', 'Los Angeles', 2),
  (1003, 'Support', 'London', 3),
    (1004, 'IT', 'Rustaq', 4),
  (1005, 'Math', 'Muscat', 5),
  (1006, 'Sport', 'Madrid', 6);


SELECT Employees.employee_id, employee_name, department_name
FROM Employees
LEFT OUTER JOIN Departments
ON Employees.department_id = Departments.department_id;


SELECT Employees.employee_id, employee_name, department_name,salary,location,manager_id
FROM Employees
LEFT OUTER JOIN Departments
ON Employees.department_id = Departments.department_id;





SELECT Employees.employee_id, employee_name, department_name
FROM Employees
Right OUTER JOIN Departments
ON Employees.department_id = Departments.department_id;




SELECT *
FROM employees
FULL OUTER JOIN departments
ON employees.department_id = departments.department_id;

------------------------------------------------------------------------------------------

CREATE VIEW department_1001 AS
SELECT *
FROM employees
WHERE department_id = 1001;

SELECT*
FROM department_1001;




---------------------------------------------------------------------------------------------

CREATE VIEW department_10 AS
SELECT *
FROM employees
WHERE department_id = 1001
WITH CHECK OPTION;

insert into department_10 (employees.employee_id,employees.employee_name,employees.department_id) values (1121,'Sami',1001)


--------------------------------------------------------------------------------------------
CREATE VIEW dept_emp_details AS
SELECT employees.*,departments.department_name, departments.location,departments.manager_id
FROM departments
INNER JOIN employees
ON departments.department_id = employees.department_id;


--------------------------------------------------------------------------------------------
CREATE VIEW dbo.dept_emp_details_right_join WITH SCHEMABINDING AS
 SELECT employees.employee_id,employees.employee_name,employees.department_id,departments.department_name, departments.location,departments.manager_id
FROM dbo.departments
RIGHT JOIN dbo.employees
ON departments.department_id = employees.department_id;


drop table employees