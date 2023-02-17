CREATE TABLE IF NOT EXISTS feature(
    id	BIGSERIAL PRIMARY KEY,
    feature_name VARCHAR(500), 
    feature_code VARCHAR(255)
);

ALTER table public.roles_permissions 
	add column if not exists feature_id BIGINT NOT null;

alter table public.roles_permissions 
	add foreign key (feature_id) REFERENCES feature (id);

alter table public.roles_permissions 
	drop column if exists permission_id; 

drop table if exists permissions;

alter table roles_permissions
    add column if not exists read BOOLEAN default false;

alter table roles_permissions
    add column if not exists write BOOLEAN default false;

alter table roles_permissions
    add column if not exists approve BOOLEAN default false;