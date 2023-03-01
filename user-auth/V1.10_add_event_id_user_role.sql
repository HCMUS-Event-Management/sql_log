alter table public.user_roles 
	add if not exists event_id bigint;
alter table public.user_roles  
	add constraint FK_user_roles_event
foreign key (event_id) references events(id);