UPDATE public.roles
    SET event_id = 0 where code = 'ADMIN' or code = 'MEMBER';
UPDATE public.roles
    SET id = 1 where code = 'MEMBER';
UPDATE public.roles
    SET id = 2 where code = 'admin';

UPDATE public.roles
    SET code = 'USER' where code = 'MEMBER';

UPDATE public.roles
SET id = 2 where code = 'ADMIN';
insert into public.roles (id, code, name, description, is_active, is_deleted, is_default, event_id)
 values (3,'SPEAKER', 'Diễn giả', 'Diễn giả của sự kiện', true, false, true, 0 );

insert into public.roles (id, code, name, description, is_active, is_deleted, is_default, event_id)
values (4, 'TICKET_COLLECTOR', 'Người soát vé', 'Người soát vé của sự kiện', true, false, true, 0 );


insert into public.roles (id, code, name, description, is_active, is_deleted, is_default, event_id)
values (5, 'EVENT_ADMIN', 'Quản lý sự kiện', 'Người quản lý sự kiện', true, false, true, 0 );

insert into public.user_roles(id, user_id, role_id, status, updated_at, is_deleted)
values (1, 1, 1, 'CREATED', now(), false);


insert into public.user_roles(id, user_id, role_id, status, updated_at, is_deleted)
values (2, 2, 1, 'CREATED', now(), false);


insert into public.user_roles(id, user_id, role_id, status, updated_at, is_deleted)
values (3, 3, 2, 'CREATED', now(), false);

insert into public.user_roles(id, user_id, role_id, status, updated_at, is_deleted)
values (4, 4, 1, 'CREATED', now(), false);

insert into public.user_roles(id, user_id, role_id, status, updated_at, is_deleted)
values (5, 5, 1, 'CREATED', now(), false);

insert into public.user_roles(id, user_id, role_id, status, updated_at, is_deleted)
values (6, 6, 1, 'CREATED', now(), false);

insert into public.user_roles(id, user_id, role_id, status, updated_at, is_deleted)
values (7, 7, 1, 'CREATED', now(), false);
insert into public.user_roles(id, user_id, role_id, status, updated_at, is_deleted)
values (8, 8, 1, 'CREATED', now(), false);

insert into public.user_roles(id, user_id, role_id, status, updated_at, is_deleted)
values (9, 9, 1, 'CREATED', now(), false);

insert into public.user_roles(id, user_id, role_id, status, updated_at, is_deleted)
values (10, 10, 1, 'CREATED', now(), false);

insert into public.user_roles(user_id, role_id, status, updated_at, is_deleted)
values ( 66, 1, 'CREATED', now(), false);

