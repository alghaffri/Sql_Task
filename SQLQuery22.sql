CREATE TABLE Department (
  Dept_id INT PRIMARY KEY,
  Dept_name VARCHAR(255),
  HOD VARCHAR(255)
);
CREATE TABLE Teacher (
  Teacher_ID INT PRIMARY KEY,
  Dept_id INT,
  Teacher_PhoneNO VARCHAR(255),
  Teacher_email VARCHAR(255),
  Teacher_Gender VARCHAR(255),
  Teacher_Major VARCHAR(255),
  Teacher_Salary INT,
  FOREIGN KEY (Dept_id) REFERENCES Department(Dept_id)
);
CREATE TABLE Student (
  Student_ID INT PRIMARY KEY,
  Course_ID INT,
  Student_name VARCHAR(255),
  Student_Major VARCHAR(255),
  Student_Gender VARCHAR(255),
  Student_PhoneNO VARCHAR(255),
  Student_Email VARCHAR(255),
  Student_HireDate DATE,
  Student_GPA INT,
  FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);
CREATE TABLE Course (
  Course_ID INT PRIMARY KEY,
  Teacher_ID INT,
  Course_Name VARCHAR(255),
  FOREIGN KEY (Teacher_ID) REFERENCES Teacher(Teacher_ID)
);
CREATE TABLE Room (
  Room_ID INT PRIMARY KEY,
  Teacher_ID INT,
  type_1 VARCHAR(255),
  Building VARCHAR(255),
  Capacity INT,
  FOREIGN KEY (Teacher_ID) REFERENCES Teacher(Teacher_ID)
);
CREATE TABLE Section (
  Section_ID INT PRIMARY KEY,
  Course_ID INT,
  Room_ID INT,
  Section_Name VARCHAR(255),
  FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID),
  FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID)
);
INSERT INTO Department (Dept_id, Dept_name, HOD)
VALUES (1, 'Mathematics', 'Dr. Ahmed'),
       (2, 'Computer Science', 'Dr. Ali'),
       (3, 'Physics', 'Dr. Sara');

INSERT INTO Teacher (Teacher_ID, Dept_id, Teacher_PhoneNO, Teacher_email, Teacher_Gender, Teacher_Major, Teacher_Salary)
VALUES (1, 1, '0123456789', 'ahmed@math.com', 'Male', 'Mathematics', 5000),
       (2, 2, '9876543210', 'ali@cs.com', 'Male', 'Computer Science', 6000),
       (3, 3, '1234567890', 'sara@physics.com', 'Female', 'Physics', 7000),
       (4, 1, '1023456789', 'hassan@math.com', 'Male', 'Mathematics', 5500),
       (5, 2, '0987654321', 'mariam@cs.com', 'Female', 'Computer Science', 6000);

INSERT INTO Student (Student_ID, Course_ID, Student_name, Student_Major, Student_Gender, Student_PhoneNO, Student_Email, Student_HireDate, Student_GPA)
VALUES (1, 1, 'Mohammed', 'Mathematics', 'Male', '0123456789', 'mohammed@student.com', '2020-01-01', 80),
       (2, 2, 'Fatima', 'Computer Science', 'Female', '9876543210', 'fatima@student.com', '2020-02-01', 85),
       (3, 3, 'Ali', 'Physics', 'Male', '1234567890', 'ali@student.com', '2020-03-01', 90),
       (4, 1, 'Aisha', 'Mathematics', 'Female', '1023456789', 'aisha@student.com', '2020-04-01', 95),
       (5, 2, 'Ahmed', 'Computer Science', 'Male', '0987654321', 'ahmed@student.com', '2020-05-01', 92);

INSERT INTO Course (Course_ID, Teacher_ID, Course_Name)
VALUES (1, 1, 'Calculus'),
       (2, 2, 'Data Structures'),
       (3, 3, 'Mechanics'),
       (4, 4, 'Algebra'),
       (5, 5, 'Database Systems');

INSERT INTO Room (Room_ID, Teacher_ID, type_1, Building, Capacity)
VALUES (1, 1, 'Lecture', 'A', 100),
       (2, 2, 'Lecture', 'B', 200),
       (3, 3, 'Lecture', 'C', 300),
       (4, 4, 'Lecture', 'D', 400),
       (5, 5, 'Lecture', 'E', 500);

INSERT INTO Section (Section_ID, Course_ID, Room_ID, Section_Name)
VALUES (1, 1, 1, 'Section A'),
       (2, 2, 2, 'Section B'),
	   (3, 3, 3, 'Section C'),
       (4, 4, 4, 'Section D'),
       (5, 5, 5, 'Section E');