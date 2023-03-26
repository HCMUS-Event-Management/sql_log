update user_roles
    set event_user_id = 0;

SELECT setval('"roles_id_seq"', (SELECT MAX(id) FROM roles)+1);