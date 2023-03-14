-- Create `OTP` table
DROP TABLE IF EXISTS otp;
CREATE TABLE IF NOT EXISTS otp(
	user_id			BIGINT NOT NULL,
	otp				VARCHAR(30) NOT NULL,
	code			VARCHAR(30) NOT null,
	"status"		VARCHAR(30) NOT NULL,
	expiredTime		TIMESTAMP NOT NULL,
	FOREIGN KEY(user_id) REFERENCES users(id)
);