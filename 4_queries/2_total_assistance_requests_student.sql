SELECT
  COUNT(*) total_assistances,
  name
FROM students s
JOIN assistance_requests ar ON s.id = ar.student_id
WHERE
  s.name = 'Elliot Dickinson'
GROUP BY
  s.name