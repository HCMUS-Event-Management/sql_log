-- Rename `user_roles.event_id` to `event_user_id`
ALTER TABLE public.user_roles RENAME COLUMN event_id TO event_user_id;
