SELECT
  t.name,
  c.name cohort,
  COUNT(*) total_assistances
FROM teachers t
JOIN assistance_requests ar ON t.id = ar.teacher_id
JOIN students s ON ar.student_id = s.id
JOIN cohorts c ON s.cohort_id = c.id
WHERE
  c.name = 'JUL02'
GROUP BY
  t.name,
  c.name
ORDER BY
  t.name