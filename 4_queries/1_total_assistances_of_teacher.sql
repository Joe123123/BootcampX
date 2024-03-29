SELECT
  COUNT(*) total_assistances,
  name
FROM teachers t
JOIN assistance_requests ar ON t.id = ar.teacher_id
WHERE
  t.name = 'Waylon Boehm'
GROUP BY
  t.name