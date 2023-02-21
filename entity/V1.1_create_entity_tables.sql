CREATE OR REPLACE FUNCTION trigger_set_current_timestamp()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;
-- End of procedure
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(
	id				BIGSERIAL	PRIMARY KEY,
	"password" 			VARCHAR(500) NOT NULL,
	full_name			VARCHAR(50),
	email 				VARCHAR(255) NOT NULL,
	phone				VARCHAR(20),
	birthday			DATE,
	identity_card		VARCHAR(50),
	gender				VARCHAR(50),
	avatar      		VARCHAR(500),
	"address"			VARCHAR(255),
	is_active			BOOLEAN DEFAULT FALSE,
	is_deleted			BOOLEAN DEFAULT FALSE,
	created_at 			TIMESTAMP DEFAULT NOW(),
	updated_at			TIMESTAMP DEFAULT NOW(),
    last_login			TIMESTAMP 
);

 --Set timestamp when updating user
DROP TRIGGER IF EXISTS set_current_timestamp on users;
CREATE TRIGGER set_current_timestamp
	BEFORE UPDATE 
	ON 
		users
	FOR EACH ROW
EXECUTE PROCEDURE trigger_set_current_timestamp();

DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
	id bigserial PRIMARY KEY,
	"name" varchar(255),
	created_at timestamp  DEFAULT now(),
	updated_at timestamp  DEFAULT now()
);

-- Set timestamp when updating categories
DROP TRIGGER IF EXISTS set_current_timestamp on categories;
CREATE TRIGGER set_current_timestamp
	BEFORE update  
	ON 
		categories
	FOR EACH ROW
EXECUTE PROCEDURE trigger_set_current_timestamp();

DROP TABLE IF EXISTS events;
CREATE TABLE IF NOT EXISTS events(
	id			        BIGSERIAL PRIMARY KEY,
	title			    VARCHAR(255) NOT NULL,
	"description" 	    VARCHAR(500) NOT NULL,
	open_time		    TIMESTAMP NOT NULL,
	due_time 		    TIME NOT NULL,
	start_at		    TIMESTAMP,
	end_at			    TIMESTAMP,
	"status"		    VARCHAR(500), --?????
	url_web 		    VARCHAR(500) NOT NULL,
	category_id		    BIGINT,
	created_by		    BIGINT NOT NULL,
	images			    TEXT[],
	"location"		    VARCHAR(500),
	seating_plan		VARCHAR(500),
	created_at 		    TIMESTAMP DEFAULT NOW(),
	updated_at		    TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(category_id) REFERENCES categories(id),
	FOREIGN KEY(created_by) REFERENCES users(id)
);

DROP TABLE IF EXISTS event_users;
CREATE TABLE IF NOT EXISTS event_users(
	id			bigserial PRIMARY KEY,
	"user_id"		BIGINT,
	"event_id" 		BIGINT,
	FOREIGN KEY("user_id") REFERENCES users(id),
	FOREIGN KEY("event_id") REFERENCES events(id)
);

-- Set timestamp when updating events
drop trigger if exists set_current_timestamp on events;
create trigger set_current_timestamp
	before update
	on
		events 
	for each row
execute procedure trigger_set_current_timestamp();

DROP TABLE IF EXISTS notifications;
CREATE TABLE IF NOT EXISTS notifications(
	id				BIGSERIAL PRIMARY KEY,
	event_id		BIGINT,
	receiver_id		BIGINT,
	content			VARCHAR(500) NOT NULL,
	linknoti		VARCHAR(255),
	is_read			BOOLEAN DEFAULT FALSE,
	created_at 		TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(receiver_id) REFERENCES users(id),
	FOREIGN KEY(event_id) REFERENCES events(id)
);

-- Set timestamp when updating notifications;
DROP TRIGGER IF EXISTS set_current_timestamp on notifications;
CREATE TRIGGER set_current_timestamp
	BEFORE UPDATE 
	ON 
		notifications
	FOR EACH ROW
EXECUTE PROCEDURE trigger_set_current_timestamp();

DROP TABLE IF EXISTS products;
CREATE TABLE IF NOT EXISTS products(
	id			BIGSERIAL PRIMARY KEY,
	"event_id" 		BIGINT,
	quantity		INT,
	unit_price		BIGINT,
	product_type		VARCHAR(255),
	preview_images		VARCHAR(255),
	"description"		VARCHAR(500),
	discount		INT,
	FOREIGN KEY(event_id) REFERENCES events(id)
);

DROP TABLE IF EXISTS ticket;
CREATE TABLE IF NOT EXISTS ticket(
	id			BIGSERIAL PRIMARY KEY,
	"owner_id"		BIGINT,
	"event_id" 		BIGINT NOT NULL,
	"buyer_id"		BIGINT NOT NULL,
	qr_code			VARCHAR(500) not null,
	price			INT,
	discount		INT,
	is_sold			BOOLEAN DEFAULT FALSE,
	is_checkin		BOOLEAN DEFAULT FALSE,
	FOREIGN KEY(event_id)  REFERENCES events(id),
	FOREIGN KEY("owner_id") REFERENCES users(id),
	FOREIGN KEY(buyer_id)  REFERENCES users(id)
);
-----

DROP TABLE IF EXISTS "comments";
CREATE TABLE IF NOT EXISTS "comments"(
	id			BIGSERIAL PRIMARY KEY,
	"user_id"		BIGINT NOT NULL,
	"event_id" 		BIGINT,
	"content"		VARCHAR(500),
	created_at 		TIMESTAMP DEFAULT NOW(),
	updated_at		TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(event_id) REFERENCES events(id),
	FOREIGN KEY("user_id") REFERENCES users(id)
);


-- Set timestamp when updating comments
drop trigger if exists set_current_timestamp on "comments";
create trigger set_current_timestamp
	before update
	on
		"comments"
	for each row
execute procedure trigger_set_current_timestamp();

DROP TABLE IF EXISTS "session";
CREATE TABLE IF NOT EXISTS "session"(
	id			BIGSERIAL PRIMARY KEY,
	"comment_id"		BIGINT,
	"event_id" 		BIGINT NOT NULL,
	"joined_users"		INT,
	limit_number		BIGINT,
	"name"			VARCHAR(255),
	is_confirm		BOOLEAN,
	is_reject		BOOLEAN,
	is_cancel		BOOLEAN,
	refund_number		BIGINT,
	FOREIGN KEY(event_id) REFERENCES events(id),
	FOREIGN KEY("comment_id") REFERENCES "comments"(id)
);


DROP TABLE IF EXISTS "reviews";
CREATE TABLE IF NOT EXISTS "reviews"(
	id			    BIGSERIAL PRIMARY KEY,
	"user_id"		BIGINT NOT NULL,
	"event_id" 		BIGINT,
	"content"		VARCHAR(500),
	created_at 		TIMESTAMP DEFAULT NOW(),
	updated_at		TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(event_id) REFERENCES events(id),
	FOREIGN KEY("user_id") REFERENCES users(id)
);

-- Set timestamp when updating reviews
drop trigger if exists set_current_timestamp on reviews;
create trigger set_current_timestamp
	before update 
	on
		reviews 
	for each row
execute procedure trigger_set_current_timestamp();

-- Drop all
--drop trigger if exists set_current_timestamp on reviews;
--DROP TABLE IF EXISTS "reviews";
--DROP TABLE IF EXISTS "session";
--drop trigger if exists set_current_timestamp on "comments";
--DROP TABLE IF EXISTS "comments";
--DROP TABLE IF EXISTS ticket;
--DROP TABLE IF EXISTS products;
--drop trigger if exists set_current_timestamp on events;
--DROP TABLE IF EXISTS event_users;
--DROP TABLE IF EXISTS events;
--DROP TRIGGER IF EXISTS set_current_timestamp on notifications;
--DROP TABLE IF EXISTS notifications;
--DROP TRIGGER IF EXISTS set_current_timestamp on categories;
--DROP TABLE IF EXISTS categories;
--DROP TRIGGER IF EXISTS set_current_timestamp on users;
--DROP TABLE IF EXISTS users;
