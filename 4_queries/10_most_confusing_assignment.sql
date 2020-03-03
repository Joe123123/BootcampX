SELECT
  a.id,
  name,
  day,
  chapter,
  COUNT(*) total_requests
FROM assistance_requests ar
JOIN assignments a ON ar.assignment_id = a.id
GROUP BY
  a.id
ORDER BY
  total_requests DESC