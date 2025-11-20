/* SELECT *
FROM themes;

SELECT *
FROM resources
ORDER BY updated_at DESC; */

/* SELECT title, url
FROM resources
WHERE type = 'exercice'; */

/* SELECT title, description
FROM resources
WHERE is_ada = 'true'; */

/* SELECT *
FROM resources
JOIN resources_skills ON resources.id = resources_skills.resource_id
JOIN skills ON skills.id = resources_skills.skill_id
WHERE skills.name = 'JavaScript' AND title LIKE '%JavaScript%'; */

/* SELECT *
FROM resources
WHERE lower(title) LIKE '%react%'; */

/* SELECT t.id,
       t.name,
       COUNT(r.id) AS total_resources
FROM themes t
LEFT JOIN resources r ON r.theme_id = t.id
GROUP BY t.id, t.name
ORDER BY total_resources DESC; */

/* SELECT r.id,
       r.title,
       r.url,
       ARRAY_AGG(s.name ORDER BY s.name) AS skills
FROM resources r
LEFT JOIN resources_skills rs ON rs.resource_id = r.id
LEFT JOIN skills s ON s.id = rs.skill_id
GROUP BY r.id, r.title, r.url
ORDER BY r.id; */

/* SELECT r.id,
       r.title,
       r.updated_at,
       t.name AS theme
FROM resources r
JOIN themes t ON t.id = r.theme_id
ORDER BY r.updated_at DESC
LIMIT 5; */

/* SELECT s.id, s.name
FROM skills s
LEFT JOIN resources_skills rs ON rs.skill_id = s.id
WHERE rs.resource_id IS NULL; */