delete from roles_permissions where id = 1;

DELETE FROM feature WHERE feature_code = 'MANAGE_TICKET' or feature_code = 'MANAGE_USER' or feature_code = 'MANAGE_EVENT';


ALTER TABLE feature
    ADD IF NOT EXISTS category varchar(255);

ALTER TABLE feature
    ADD IF NOT EXISTS sub_category varchar(255);

INSERT INTO public.feature (id, feature_code, feature_name, category, sub_category)
    VALUES (1, 'rbacRole', 'Manage Roles', 'Entity Management', null);

INSERT INTO public.feature (id, feature_code, feature_name, category, sub_category)
    VALUES (2, 'user', 'Manage Event Users', 'Entity Management', null);
