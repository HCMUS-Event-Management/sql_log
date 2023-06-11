-- User
SELECT setval('users_id_seq', (SELECT MAX(id) + 1 FROM users), FALSE);

-- User roles
SELECT setval('user_roles_id_seq', (SELECT MAX(id) + 1 FROM user_roles), FALSE);

-- Features
SELECT setval('feature_id_seq', (SELECT MAX(id) + 1 FROM feature), FALSE);