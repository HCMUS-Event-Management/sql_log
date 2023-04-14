-- Add location for event
drop table if exists "locations";
create table if not exists "locations"(
	id			bigserial primary key,
	"name"		varchar(100),
	longitude	numeric,
	latitude	numeric
);

-- Update event table
alter table "events" add column "organization_name" varchar(40);
alter table "events" alter column "description" type text;
alter table "events" add column "location_id" bigint;
alter table "events" add constraint "events_location_id_fkey" foreign key ("location_id") references "locations"(id);
