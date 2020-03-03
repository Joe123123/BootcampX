SELECT
  c.name cohort,
  SUM(ar.completed_at - ar.started_at) total_duration
FROM assistance_requests ar
JOIN students s ON ar.student_id = s.id
JOIN cohorts c ON s.cohort_id = c.id
GROUP BY
  c.name
ORDER BY
  total_duration