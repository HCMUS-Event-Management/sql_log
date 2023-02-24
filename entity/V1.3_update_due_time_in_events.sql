-- Create a temporary TIMESTAMP column
alter table public.events add column create_time_holder timestamp without time zone null;

-- Copy casted value over to the temporary column
update public.events set create_time_holder = create_time_holder::timestamp;

-- Modify original column using the temporary column
alter table public.events alter column due_time type timestamp without time zone using create_time_holder;

-- Drop the temporary column (after examining altered column values)
alter table public.events drop column create_time_holder;

alter table public.events alter column due_time set not null;