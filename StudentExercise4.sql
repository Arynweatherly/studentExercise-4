
--write a query to return students first and last name w/ cohorts name
SELECT 
s.FirstName,
s.LastName,
c.Name
FROM Student s 
LEFT JOIN Cohort c ON s.CohortId = c.Id;


--write query to return all students first name and last name w/ 
--cohorts name only for a specific cohort
SELECT 
s.FirstName,
s.LastName,
c.Name
FROM Student s 
LEFT JOIN Cohort c ON s.CohortId = c.Id
WHERE c.Name = 'Cohort35';


-- 5. write a query to return all instructors ordered by their last name
SELECT * FROM INSTRUCTOR 
ORDER BY INSTRUCTOR.LastName;

-- 6. write a query to return a list of unique instructor specialties 
SELECT DISTINCT Specialty FROM INSTRUCTOR;

--7. Write a query to return a list of all student names along w/ the exercises
--    they have been assigned. if an exercise has not been assigned, it shouldnt be in 
--     the results 

SELECT 
Student.Id,
Student.FirstName,
Student.LastName,
Exercise.Name
FROM Exercise
LEFT JOIN StudentExercise on ExerciseId = Exercise.Id
LEFT JOIN Student on StudentId = Student.Id
--.ExerciseId IS NOT NULL;



-- 8. Return a list of student names along w/ the count of exercises assigned to each student

SELECT 
Student.FirstName,
Student.LastName,
COUNT(Exercise.Name)
FROM Exercise
LEFT JOIN StudentExercise on ExerciseId = Exercise.Id
LEFT JOIN Student on StudentId = Student.Id
GROUP BY Student.FirstName, Student.LastName;


