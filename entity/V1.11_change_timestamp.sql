-- Event table
ALTER TABLE public.events ALTER COLUMN start_at TYPE timestamp with time zone USING start_at::timestamp with time zone;
ALTER TABLE public.events ALTER COLUMN end_at TYPE timestamp with time zone USING end_at::timestamp with time zone;
ALTER TABLE public.events ALTER COLUMN created_at TYPE timestamp with time zone USING created_at::timestamp with time zone;
ALTER TABLE public.events ALTER COLUMN updated_at TYPE timestamp with time zone USING updated_at::timestamp with time zone;

-- Session table
ALTER TABLE public."session" ALTER COLUMN start_at TYPE timestamp with time zone USING start_at::timestamp with time zone;
ALTER TABLE public."session" ALTER COLUMN end_at TYPE timestamp with time zone USING end_at::timestamp with time zone;

-- Proposal session ticket table
ALTER TABLE public.proposal_session_ticket ALTER COLUMN start_time_for_sell TYPE timestamp with time zone USING start_time_for_sell::timestamp with time zone;
ALTER TABLE public.proposal_session_ticket ALTER COLUMN end_time_for_sell TYPE timestamp with time zone USING end_time_for_sell::timestamp with time zone;

-- Category table
ALTER TABLE public.categories ALTER COLUMN created_at TYPE timestamp with time zone USING created_at::timestamp with time zone;
ALTER TABLE public.categories ALTER COLUMN updated_at TYPE timestamp with time zone USING updated_at::timestamp with time zone;

-- Review table
ALTER TABLE public.reviews ALTER COLUMN created_at TYPE timestamp with time zone USING created_at::timestamp with time zone;
ALTER TABLE public.reviews ALTER COLUMN updated_at TYPE timestamp with time zone USING updated_at::timestamp with time zone;

-- Comment table
ALTER TABLE public."comments" ALTER COLUMN created_at TYPE timestamp with time zone USING created_at::timestamp with time zone;
ALTER TABLE public."comments" ALTER COLUMN updated_at TYPE timestamp with time zone USING updated_at::timestamp with time zone;

-- Notification table
ALTER TABLE public.notifications ALTER COLUMN created_at TYPE timestamp with time zone USING created_at::timestamp with time zone;
