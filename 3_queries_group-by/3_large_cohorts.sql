SELECT
  cohorts.name cohort_name,
  COUNT(*) student_count
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY
  cohort_name
HAVING
  COUNT(*) >= 18
ORDER BY
  student_count