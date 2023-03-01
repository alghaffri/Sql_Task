CREATE TABLE Employees (
   EmployeeID INT PRIMARY KEY,
   EmployeeName VARCHAR(50),
   DepartmentID INT
);

CREATE TABLE Departments (
   DepartmentID INT PRIMARY KEY,
   DepartmentName VARCHAR(50),
    Location VARCHAR(50)
);

INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID,)
VALUES (1, 'John Doe', 1001),
       (2, 'Jane Doe', 1002),
       (3, 'Jim Smith', 1001),
       (4, 'Sara Johnson', 1003);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (1001, 'Marketing'),
       (1002, 'Sales'),
       (1003, 'Engineering');




ALTER TABLE Employees
ADD Location VARCHAR(50) ;





SELECT Employees.EmployeeID, EmployeeName, DepartmentName
FROM Employees
LEFT OUTER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;


SELECT Employees.EmployeeID, EmployeeName, DepartmentName
FROM Employees
Right OUTER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;



