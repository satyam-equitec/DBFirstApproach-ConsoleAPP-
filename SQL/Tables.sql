-- Create Standard Table
CREATE TABLE Standard(
 StandardId INT PRIMARY KEY IDENTITY(1,1),
 StandardName VARCHAR(100),
 Description VARCHAR(100)
)
GO
-- Standard table data
INSERT INTO Standard VALUES('STD1', 'Outstanding');
INSERT INTO Standard VALUES('STD2', 'Good');
INSERT INTO Standard VALUES('STD3', 'Average');
INSERT INTO Standard VALUES('STD4', 'Below Average');
GO

-- Create Teacher Table
CREATE TABLE Teacher(
 TeacherId INT PRIMARY KEY IDENTITY(1,1),
 FirstName VARCHAR(100),
 LastName VARCHAR(100),
 StandardId INT FOREIGN KEY REFERENCES Standard(StandardId)
)
GO
-- Teacher table data
INSERT INTO Teacher VALUES('Anurag', 'Mohanty', 1);
INSERT INTO Teacher VALUES('Preety', 'Tiwary', 2);
INSERT INTO Teacher VALUES('Priyanka', 'Dewangan', 3);
INSERT INTO Teacher VALUES('Sambit', 'Satapathy', 3);
INSERT INTO Teacher VALUES('Hina', 'Sharma', 2);
INSERT INTO Teacher VALUES('Sishanta', 'Jena', 1);
GO

-- Create Course Table
CREATE TABLE Course(
 CourseId INT PRIMARY KEY IDENTITY(1,1),
 CourseName VARCHAR(100),
 TeacherId INT FOREIGN KEY REFERENCES Teacher(TeacherId)
)
GO
-- Course table data
INSERT INTO Course VALUES('.NET', 1);
INSERT INTO Course VALUES('Java', 2);
INSERT INTO Course VALUES('PHP', 3);
INSERT INTO Course VALUES('Oracle', 4);
INSERT INTO Course VALUES('Android', 5);
INSERT INTO Course VALUES('Python', 6);
GO

-- Create Student Table
CREATE TABLE Student(
 StudentId INT PRIMARY KEY IDENTITY(1,1),
 FirstName VARCHAR(100),
 LastName VARCHAR(100),
 StandardId INT FOREIGN KEY REFERENCES Standard(StandardId)
)
GO
-- Student table data
INSERT INTO Student VALUES('Virat', 'Kohli', 1);
INSERT INTO Student VALUES('Rohit', 'Sharma', 2);
INSERT INTO Student VALUES('Lokesh', 'Rahul', 3);
INSERT INTO Student VALUES('Smriti', 'Mandana', 4);
GO

-- Create StudentAddress Table
CREATE TABLE StudentAddress(
 StudentId INT PRIMARY KEY FOREIGN KEY REFERENCES Student(StudentId),
 Address1 VARCHAR(100),
 Address2 VARCHAR(100),
 Mobile VARCHAR(10),
 Email VARCHAR(100)
)
GO
-- StudentAddress table data
INSERT INTO StudentAddress VALUES(1, 'Lane1', 'Lane2', '1111111111', '1@dotnettutorials.net');
INSERT INTO StudentAddress VALUES(2, 'Lane3', 'Lane4', '2222222222', '2@dotnettutorials.net');
INSERT INTO StudentAddress VALUES(3, 'Lane5', 'Lane6', '3333333333', '3@dotnettutorials.net');
INSERT INTO StudentAddress VALUES(4, 'Lane7', 'Lane8', '4444444444', '4@dotnettutorials.net');
GO

-- Create StudentCourse Table
CREATE TABLE StudentCourse(
 StudentId INT NOT NULL FOREIGN KEY REFERENCES Student(StudentId),
    CourseId INT NOT NULL FOREIGN KEY REFERENCES Course(CourseId)
    PRIMARY KEY (StudentId, CourseId)
)
GO
-- StudentCourse table data
INSERT INTO StudentCourse VALUES(1,1);
INSERT INTO StudentCourse VALUES(1,2);
INSERT INTO StudentCourse VALUES(2,3);
INSERT INTO StudentCourse VALUES(2,4);
INSERT INTO StudentCourse VALUES(3,1);
INSERT INTO StudentCourse VALUES(3,6);
INSERT INTO StudentCourse VALUES(4,5);
INSERT INTO StudentCourse VALUES(4,6);
GO