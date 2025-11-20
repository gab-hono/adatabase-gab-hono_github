INSERT INTO themes (id, name, description, created_at, updated_at) VALUES
(1, 'Frontend', 'Ressources pour apprendre le développement frontend', '2024-01-10 09:00:00', '2024-01-10 09:00:00'),
(2, 'Backend', 'Ressources backend et APIs', '2024-02-01 15:30:00', '2024-02-01 15:30:00'),
(3, 'Base de données', 'SQL, Postgres, optimisation', '2024-03-12 11:45:00', '2024-03-12 11:45:00'),
(4, 'DevOps', 'Déploiement, CI/CD, Docker', '2024-04-20 18:00:00', '2024-04-20 18:00:00');

INSERT INTO skills (id, name) VALUES
(1, 'JavaScript'),
(2, 'React'),
(3, 'SQL'),
(4, 'PostgreSQL'),
(5, 'Node.js');

INSERT INTO resources (id, type, title, description, url, is_ada, theme_id) VALUES
(1, 'guide', 'Introduction à React', 'Guide officiel React', 'https://react.dev', false, 1),
(2, 'video', 'SQL pour débutants', 'Cours SQL complet', 'https://example.com/sql', true, 3),
(3, 'exercice', 'Exercices JavaScript', 'Pratique JS', 'https://example.com/js', false, 1),
(4, 'projet', 'Créer une API en node', 'Projet node', 'https://example.com/node', true, 2);

INSERT INTO resources_skills (resource_id, skill_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 1),
(4, 1),
(4, 5);
