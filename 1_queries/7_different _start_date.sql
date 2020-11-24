SELECT students.name, students.start_date as student_start_date, cohorts.name as cohort_name, cohorts.start_date as cohort_start_date
FROM students
JOIN cohorts ON cohort_id = cohorts.cohort_i
WHERE cohorts.start_date != students.start_date
ORDER BY cohorts_start_date;