/*
CREATE TABLE statements- create table and columns
put foreign key in CONSTRAINT
INSERT statements to create data in tables */

CREATE TABLE Cohort (
Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
Name varchar(50),
);

CREATE TABLE Student (
FirstName varchar(55),
LastName varchar(55),
SlackHandle varchar(55),
CohortId int,
Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
CONSTRAINT FK_Student_Cohort FOREIGN KEY (CohortId) REFERENCES Cohort(Id),
);

CREATE TABLE INSTRUCTOR (
FirstName varchar(50),
LastName varchar(50),
SlackHandle varchar(50),
CohortId int FOREIGN KEY REFERENCES Cohort(id),
Specialty varchar(50),
Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
);

CREATE TABLE Exercise (
Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
Name varchar(50),
Language varchar(50),
);

CREATE TABLE StudentExercise (
StudentId int,
ExerciseId int,
Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
CONSTRAINT FK_StudentExercise_Student FOREIGN KEY (StudentId) REFERENCES Student(Id),
CONSTRAINT FK_StudentExercise_Exercise FOREIGN KEY (ExerciseId) REFERENCES Exercise(Id),

);

--populate each table w/ data. you should have 
--2-3 cohorts
--5-10 students
--4-8 instructors 
--2-5 exercises
--and each student should be assigned 1-2 exercises

INSERT INTO Cohort (Name)
VALUES ('Cohort36');

INSERT INTO Cohort (Name)
VALUES ('Cohort35');

INSERT INTO Cohort (Name)
VALUES ('Cohort34');

INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Aryn', 'Weatherly', 'arynW', 1);

INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Heidi', 'Smith', 'heidiS', 2);

INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Sage', 'Klein', 'sageK', 3);

INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Phil', 'Griswold', 'philG', 1);

INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Nate', 'Vogel', 'nateV', 2);

INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Taylor', 'Carroll', 'taylorC', 3);

INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty)
VALUES ('Adam', 'Sheaffer', 'adamS', 1, 'CatchPhrases');

INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty)
VALUES ('Madi', 'Peper', 'madiP', 2, 'BeatSaber');

INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty)
VALUES ('Mo', 'Silvera', 'moS', 3, 'CrackingJokes');

INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty)
VALUES ('Brenda', 'Long', 'brendaL', 1, 'Smiling');

INSERT INTO Exercise (name, Language)
VALUES ('StudentExercise', 'CSharp');

INSERT INTO Exercise (name, Language)
VALUES ('Kennel', 'ReactJS');

INSERT INTO Exercise (name, Language)
VALUES ('WelcomeToNashville', 'JavaScript');

INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (1,2);

INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (3,1);

INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (5,3)

INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (2,3)

INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (4,2)

INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (5,1)

INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (6,3)

INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (6,2)

INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (1,3)

INSERT INTO StudentExercise (StudentId, ExerciseId)
VALUES (2,2)



--write a query to return students first and last name w/ cohorts name


--write query to return all students first name and last name w/ 
--cohorts name only


--write a query to return all instructors ordered by their last name


--write a query to return a list of unique instructor specialties 