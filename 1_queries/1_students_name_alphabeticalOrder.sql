SELECT id, full_name 
FROM students
WHERE cohort_id = 4
ORDER BY full_name;

/*
Select their id and name.

Order them by their name in alphabetical order.

Since this query needs to work with any specific cohort, just use any number for the cohort_id.
 id |     full_name     
----+-------------------
 58 | Abe Thiel
 59 | Bernice Reichel
 61 | Catherine Hyatt
 60 | Elise Grant
 57 | Irwin King
 49 | Jordy Bruen
 54 | Keenan Harvey
 53 | Lucienne Shanahan
 62 | Murphy Mueller
 56 | Nigel Feeney
 51 | Vernice Gerlach
 52 | Vivien Mosciski
 50 | Waino Jerde
 55 | Wilma Konopelski
*/