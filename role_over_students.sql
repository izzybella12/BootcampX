SELECT students.name, cohorts.name, students.start_date as when_student_began_bootcamp, cohorts.start_date as when_cohort_began_bootcamp
FROM students 
FULL JOIN cohorts on cohorts.id = cohort_id
WHERE students.start_date != cohorts.start_date
ORDER BY cohorts.start_date;