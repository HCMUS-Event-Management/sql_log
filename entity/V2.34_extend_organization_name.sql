alter table public.events
    alter column organization_name type varchar(500) using organization_name::varchar(500);
