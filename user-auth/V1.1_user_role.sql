-- Procedure for set timestamp for updated_at
CREATE OR REPLACE FUNCTION trigger_set_current_timestamp()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;
-- End of procedure

CREATE TABLE IF NOT EXISTS users(
	id					BIGSERIAL	PRIMARY KEY,
	uuid				VARCHAR(255) ,
	username			VARCHAR(255) NOT NULL,
	"password" 			VARCHAR(500) NOT NULL,
	full_name			VARCHAR(50) NOT NULL,
	email 				VARCHAR(255) NOT NULL,
	phone				VARCHAR(20),
	birthday			date NOT NULL,
	identity_card		VARCHAR(50),
	gender				VARCHAR(50),
	profile_image		VARCHAR(500),
	"address"			VARCHAR(255),
	is_active			BOOLEAN DEFAULT FALSE,
	is_forgot_password	BOOLEAN DEFAULT FALSE,
	is_deleted			BOOLEAN DEFAULT FALSE,
	created_on 			TIMESTAMP,
	updated_at			TIMESTAMP default now(),
    last_login			TIMESTAMP 
);

-- Set timestamp when updating user
-- DROP TRIGGER IF EXISTS set_current_timestamp on users;
-- CREATE TRIGGER set_current_timestamp
-- BEFORE UPDATE ON users
-- FOR EACH ROW
-- EXECUTE PROCEDURE trigger_set_current_timestamp();

CREATE TABLE IF NOT EXISTS roles(
	id					BIGSERIAL	PRIMARY KEY,
	code				VARCHAR(255) NOT NULL,
	"name" 				VARCHAR(500) NOT NULL,
	"description"		VARCHAR(255),
	is_active			BOOLEAN	NOT NULL DEFAULT TRUE,
	is_deleted			BOOLEAN DEFAULT FALSE,
	is_default			BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS user_roles(
	id					BIGSERIAL	PRIMARY KEY,
	user_id				BIGINT NOT NULL,
	role_id 			BIGINT NOT NULL,
	"status"			VARCHAR(50),
	updated_at			TIMESTAMP,
	is_deleted			BOOLEAN DEFAULT FALSE,
	FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(role_id) REFERENCES roles(id)
);

-- Set timestamp when updating user
-- DROP TRIGGER IF EXISTS set_current_timestamp on user_roles;
-- CREATE TRIGGER set_current_timestamp
-- BEFORE UPDATE ON user_roles
-- FOR EACH ROW
-- EXECUTE PROCEDURE trigger_set_current_timestamp();

CREATE TABLE IF NOT EXISTS permissions(
	id					BIGSERIAL	PRIMARY KEY,
	code				VARCHAR(255) NOT NULL,
	"name" 				VARCHAR(500),
	"description"		VARCHAR(255),
	is_active			BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS roles_permissions(
	id					BIGSERIAL	PRIMARY KEY,
	permission_id		BIGINT NOT NULL,
	role_id 			BIGINT NOT NULL,
	updated_at			TIMESTAMP default now(),
	is_deleted			BOOLEAN DEFAULT FALSE,
	FOREIGN KEY(permission_id) REFERENCES permissions(id),
	FOREIGN KEY(role_id) REFERENCES roles(id)
);

-- Set timestamp when updating user
-- DROP TRIGGER IF EXISTS set_current_timestamp on roles_permissions;
-- CREATE TRIGGER set_current_timestamp
-- BEFORE UPDATE ON roles_permissions
-- FOR EACH ROW
-- EXECUTE PROCEDURE trigger_set_current_timestamp();