SELECT cohorts.full_name as cohort, count(assignment_submissions.*) as total_submission
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.full_name
ORDER BY total_submission DESC;

/*
Get the total number of assignment submissions for each cohort.

Select the cohort name and total submissions.
Order the results from greatest to least submissions.
Expected Result:

 cohort | total_submissions 
--------+-------------------
 SEP24  |              9328
 JUN04  |              8030
 APR09  |              7935
 NOV19  |              7231
 JUL02  |              5868
...
(11 rows)
*/