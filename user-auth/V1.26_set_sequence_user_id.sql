SELECT setval('users_id_seq', (SELECT MAX(id) FROM users) + 1, FALSE);