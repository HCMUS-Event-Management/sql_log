CREATE TABLE common_setting (
	id bigserial PRIMARY KEY,
	min_time_before_start_event varchar(255),
	updated_at timestamp  DEFAULT now(),
	updated_by bigint,
	FOREIGN KEY(updated_by) REFERENCES users(id)
);

insert into common_setting (min_time_before_start_event, updated_by) values ('1d', 2);