DROP DATABASE IF EXISTS student_project;
CREATE SCHEMA student_project;

CREATE TABLE Student(
studentID INT NOT NULL,
imeStudenta varchar(20),
prezimeStudenta varchar(30),
datumRodjenja DATE,
brojIndexa INT UNIQUE,
PRIMARY KEY (studentID)
);

