SELECT
  AVG(total_duration) average_total_duration
FROM (
    SELECT
      SUM(ar.completed_at - ar.started_at) total_duration
    FROM assistance_requests ar
    JOIN students s ON ar.student_id = s.id
    JOIN cohorts c ON s.cohort_id = c.id
    GROUP BY
      c.name
  ) AS td