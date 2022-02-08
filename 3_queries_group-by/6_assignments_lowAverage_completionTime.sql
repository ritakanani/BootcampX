SELECT students.full_name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;

/*
Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.

Select the name of the student, their average completion time, and the average suggested completion time.
Order by average completion time from smallest to largest.
Only get currently enrolled students.
This will require data from students, assignment_submissions, and assignments.
Expected Result:

    student     | average_assignment_duration | average_estimated_duration 
----------------+-----------------------------+----------------------------
 Delores Gibson |         41.2971428571428571 |        53.7571428571428571
 Cory Toy       |         41.8800000000000000 |        53.7571428571428571
 Nola Jerde     |         42.2764227642276423 |        54.3089430894308943
 Florida Turner |         42.5934959349593496 |        54.3089430894308943
(4 rows)
*/
