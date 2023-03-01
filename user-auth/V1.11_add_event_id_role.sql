alter table public.user_roles 
	drop CONSTRAINT  FK_user_roles_event;

alter table public.roles 
	add if not exists event_id bigint;