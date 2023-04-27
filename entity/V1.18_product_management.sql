drop table if exists "products";
create table if not exists "products"(
	id			bigserial primary key,
	event_id	bigint,
	"name"		varchar(100) not null,
	quantity	int not null,
	price		bigint not null,
	discount	numeric not null constraint product_discount_range check(0 < discount and discount < 1),
	thumbnail	varchar(500),
	created_at	timestamp default now(),
	updated_at	timestamp default now(),
	foreign key(event_id) references "events"(id)
);

drop table if exists "proposal_product";
create table if not exists "proposal_product"(
	id			bigserial primary key,
	product_id	bigint,
	code		varchar(20) not null,
	user_id		bigint,
	discount	numeric not null constraint proposal_product_discount_range check(0 < discount and discount < 1),
	is_paid		boolean default false,
	created_at	timestamp default now(),
	updated_at	timestamp default now(),
	foreign key(product_id) references "products"(id)
);