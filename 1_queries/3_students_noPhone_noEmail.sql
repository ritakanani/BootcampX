SELECT full_name, id
FROM students
WHERE phone IS NULL 
OR email IS NULL
-- ORDER BY cohort_id; (is also work with this)

/*
Get all of the students that don't have an email or phone number

    full_name     | id  
------------------+-----
 Aurore Yundt     | 160
 Cory Toy         | 161
 Kurt Turcotte    | 163
 Elda McClure     | 164
 Luisa Sipes      | 168
 Bertha Johnson   | 172
 Freeman Marks    | 175
 Javonte Ward     | 178
 Trace Mohr       | 179
 Ibrahim Lubowitz | 181
 Hayden Cronin    | 182
 Marisa Rau       | 183
 Hettie Hettinger | 184
 Nola Jerde       | 185
 Jessika Jenkins  | 187
 Jerrold Rohan    | 189
 Vivienne Larson  | 191
(17 rows)
*/