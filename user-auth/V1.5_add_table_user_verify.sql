-- Create 'user_verify' table
CREATE TABLE IF NOT EXISTS user_verify(
	id				BIGSERIAL PRIMARY KEY,
	user_id			BIGINT NOT NULL,
	verify_code		VARCHAR(30) NOT NULL,
	created_at		TIMESTAMP DEFAULT now(),
	FOREIGN KEY(user_id) REFERENCES users(id)
);

-- Auto delete all old rows (more 10 minutes) before inserting a new value
CREATE OR REPLACE FUNCTION delete_old_rows() RETURNS trigger AS
$$
BEGIN
  DELETE FROM user_verify WHERE created_at < NOW() - INTERVAL '10 minutes';
  RETURN NULL;
END;
$$ 
LANGUAGE plpgsql;

CREATE TRIGGER delete_old_rows_trigger 
BEFORE INSERT 
ON user_verify 
FOR EACH ROW 
EXECUTE PROCEDURE delete_old_rows();

