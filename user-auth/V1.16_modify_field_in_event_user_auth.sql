-- Remove `open_time` and `due_time`, then add `is_online`
ALTER TABLE public.events DROP COLUMN open_time;
ALTER TABLE public.events DROP COLUMN due_time;