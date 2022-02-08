SELECT  SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions 
JOIN students ON students.id = student_id 
JOIN cohorts ON students.cohort_id = cohorts.id 
WHERE cohorts.full_name = 'FEB12';

/*

Get the total amount of time that all students from a specific cohort have spent on all assignments.

This should work for any cohort but use FEB12 for now.
Select only the total amount of time as a single column.
You can write as many JOIN statements as you need in a single query. Expected Result:
 total_duration 
----------------
         373501
(1 row)
*/