SELECT assignments.id AS id, assignments.day AS day, assignments.chapter AS chapter, assignments.name AS name, COUNT(assignment_id) AS total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY assignments.id, assignments.day, assignments.chapter, assignments.name
ORDER BY total_requests;
