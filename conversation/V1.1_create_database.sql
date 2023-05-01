drop table if exists "notification_user";
drop table if exists "notifications";
drop table if exists "event_user";
drop table if exists "events";
drop table if exists "users";

create table if not exists "users"(
	id					bigserial primary key,
	full_name			varchar(50) not null,
	email				varchar(255) not null,
	is_active			bool not null,
	is_deleted			bool not null
);

create table if not exists "events"(
	id					bigserial primary key,
	title				varchar(255) not null,
	start_at			timestamp not null,
	end_at				timestamp not null,
	status				varchar(500) not null
);

create table if not exists "event_user"(
	id					bigserial primary key,
	event_id			bigint,
	user_id				bigint,
	foreign key (event_id) references "events"(id),
	foreign key (user_id) references "users"(id)
);

create table if not exists "notifications"(
	id					bigserial primary key,
	title				varchar(255) not null,
	"content"			text not null,
	--
	event_id			bigint,
	foreign key (event_id) references "events"(id)
);

create table if not exists "notification_user"(
	notification_id		bigint,
	user_id				bigint,
	is_read				bool not null,
	foreign key (notification_id) references "notifications"(id),
	foreign key (user_id) references "users"(id)
);