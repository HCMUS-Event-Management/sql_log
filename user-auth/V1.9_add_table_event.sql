CREATE TABLE IF NOT EXISTS events(
	id			        BIGINT PRIMARY KEY,
	title			    VARCHAR(255) NOT NULL,
	"description" 	    VARCHAR(500) NOT NULL,
	open_time		    TIMESTAMP NOT NULL,
	due_time 		    TIMESTAMP NOT NULL,
	start_at		    TIMESTAMP,
	end_at			    TIMESTAMP,
	"status"		    VARCHAR(500), --?????
	created_by		    BIGINT NOT NULL,
	"location"		    VARCHAR(500),
	seating_plan		VARCHAR(500),
	"type"			VARCHAR(100),
	created_at 		    TIMESTAMP DEFAULT NOW(),
	updated_at		    TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(created_by) REFERENCES users(id)
);


DROP TABLE IF EXISTS event_users;
CREATE TABLE IF NOT EXISTS event_users(
	id				BIGINT PRIMARY KEY,
	"user_id"		BIGINT,
	"event_id" 		BIGINT,
	event_role		VARCHAR(50),
	FOREIGN KEY("user_id") REFERENCES users(id),
	FOREIGN KEY("event_id") REFERENCES events(id)
);