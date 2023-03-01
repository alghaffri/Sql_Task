CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  name VARCHAR(50),
  department_id INT,
  salary INT
);

CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(50)
);

INSERT INTO employees (emp_id, name, department_id, salary)
VALUES
  (1, 'John', 1001, 5000),
  (2, 'Jane', 1001, 6000),
  (3, 'Jim', 1002, 6000),
  (4, 'Joan', 1002, 7000),
  (5, 'Jerry', 1003, 8000),
  (6, 'Jack', 1003, 9000);

INSERT INTO departments (department_id, department_name)
VALUES
  (1001, 'Sales'),
  (1002, 'Marketing'),
  (1003, 'IT');


  SELECT e1.name AS employee_name, e2.name AS manager_name
FROM employees e1
JOIN employees e2 ON e1.department_id = e2.department_id AND e1.salary < e2.salary;





