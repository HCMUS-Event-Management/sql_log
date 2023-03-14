-- Create `OTP` table
DROP TABLE IF EXISTS otp;
CREATE TABLE IF NOT EXISTS otp(
	id				BIGSERIAL PRIMARY KEY,
	user_id			BIGINT NOT NULL,
	otp				VARCHAR(30) NOT NULL,
	expired_time	TIMESTAMP NOT NULL,
	FOREIGN KEY(user_id) REFERENCES users(id)
);