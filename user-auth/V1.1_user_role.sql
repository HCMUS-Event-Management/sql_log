-- Procedure for set timestamp for updated_at
CREATE OR REPLACE FUNCTION trigger_set_current_timestamp()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;
-- End of procedure

CREATE TABLE IF NOT EXISTS app_user(
	id					BIGSERIAL	PRIMARY KEY,
	username			VARCHAR(255) NOT NULL,
	uuid				VARCHAR(255) ,
	password 			VARCHAR(500) NOT NULL,
	name				VARCHAR(500) NOT NULL,
	date_of_birth		TIMESTAMP	NOT NULL,
	email 				VARCHAR(255) NOT NULL,
	identity_card		VARCHAR(50),
	address				VARCHAR(500),
	phone_number		VARCHAR(50),
	gender				VARCHAR(50),
	profile_image		VARCHAR(500),
	is_active			BOOLEAN DEFAULT FALSE,
	created_on TIMESTAMP ,
	updated_on TIMESTAMP default now(),
    last_login TIMESTAMP 
);

-- Set timestamp when updating user
DROP TRIGGER IF EXISTS set_current_timestamp on app_user;
CREATE TRIGGER set_current_timestamp
BEFORE UPDATE ON app_user
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_current_timestamp();

CREATE TABLE IF NOT EXISTS roles(
	id					BIGSERIAL	PRIMARY KEY,
	code				VARCHAR(255) NOT NULL,
	name 				VARCHAR(500) NOT NULL,
	description			VARCHAR(255),
	is_active			BOOLEAN		 NOT NULL DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS user_roles(
	id					BIGSERIAL	PRIMARY KEY,
	user_id				BIGINT NOT NULL,
	role_id 			BIGINT NOT NULL,
	updated_on			TIMESTAMP,
	FOREIGN KEY(user_id) REFERENCES app_user(id),
	FOREIGN KEY(role_id) REFERENCES roles(id)
);

-- Set timestamp when updating user
DROP TRIGGER IF EXISTS set_current_timestamp on user_roles;
CREATE TRIGGER set_current_timestamp
BEFORE UPDATE ON user_roles
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_current_timestamp();

CREATE TABLE IF NOT EXISTS permissions(
	id					BIGSERIAL	PRIMARY KEY,
	code				VARCHAR(255) NOT NULL,
	name 				VARCHAR(500),
	description			VARCHAR(255),
	is_active			BOOLEAN		 NOT NULL DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS roles_permissions(
	id					BIGSERIAL	PRIMARY KEY,
	permission_id		BIGINT NOT NULL,
	role_id 			BIGINT NOT NULL,
	updated_on			TIMESTAMP,
	FOREIGN KEY(permission_id) REFERENCES permissions(id),
	FOREIGN KEY(role_id) REFERENCES roles(id)
);

-- Set timestamp when updating user
DROP TRIGGER IF EXISTS set_current_timestamp on roles_permissions;
CREATE TRIGGER set_current_timestamp
BEFORE UPDATE ON roles_permissions
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_current_timestamp();
