CREATE TABLE IF NOT EXISTS event_information(
	id			        BIGSERIAL PRIMARY KEY,
    event_id            BIGINT,
	title			    VARCHAR(255) NOT NULL,
	"description" 	    VARCHAR(500) NOT NULL,
	start_at		    TIMESTAMP,
	end_at			    TIMESTAMP,
	"location"		    VARCHAR(500),
	"type"			VARCHAR(100)
);