CREATE TABLE IF NOT EXISTS bank_account_info (
	id bigserial PRIMARY KEY,
	account_number varchar(255),
	bank_code varchar(255),
	bank_name varchar(500),
	bank_address text,
	owner_id bigint,
	event_id bigint,
	foreign key (owner_id) references users(id)
);
