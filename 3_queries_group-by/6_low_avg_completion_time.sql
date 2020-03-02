SELECT
  students.name student,
  AVG(assignment_submissions.duration) average_assignment_duration,
  AVG(assignments.duration) average_estimated_duration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE
  end_date IS NULL
GROUP BY
  students.name
HAVING
  avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY
  average_assignment_duration