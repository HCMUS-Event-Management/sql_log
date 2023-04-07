-- `reviews` table
ALTER TABLE public.reviews ALTER COLUMN created_at TYPE timestamp USING created_at::timestamp;
ALTER TABLE public.reviews ALTER COLUMN updated_at TYPE timestamp USING updated_at::timestamp;

-- `comments` table
ALTER TABLE public."comments" ALTER COLUMN created_at TYPE timestamp USING created_at::timestamp;
ALTER TABLE public."comments" ALTER COLUMN updated_at TYPE timestamp USING updated_at::timestamp;

-- `categories` table
ALTER TABLE public.categories ALTER COLUMN created_at TYPE timestamp USING created_at::timestamp;
ALTER TABLE public.categories ALTER COLUMN updated_at TYPE timestamp USING updated_at::timestamp;

-- `notifications` table
ALTER TABLE public.notifications ALTER COLUMN created_at TYPE timestamp USING created_at::timestamp;

-- `proposal_session_ticket` table
ALTER TABLE public.proposal_session_ticket ALTER COLUMN start_time_for_sell TYPE timestamp USING start_time_for_sell::timestamp;
ALTER TABLE public.proposal_session_ticket ALTER COLUMN end_time_for_sell TYPE timestamp USING end_time_for_sell::timestamp;

-- `session` table
ALTER TABLE public."session" ALTER COLUMN start_at TYPE timestamp USING start_at::timestamp;
ALTER TABLE public."session" ALTER COLUMN end_at TYPE timestamp USING end_at::timestamp;

-- `events` table
ALTER TABLE public.events ALTER COLUMN start_at TYPE timestamp USING start_at::timestamp;
ALTER TABLE public.events ALTER COLUMN end_at TYPE timestamp USING end_at::timestamp;
ALTER TABLE public.events ALTER COLUMN created_at TYPE timestamp USING created_at::timestamp;
ALTER TABLE public.events ALTER COLUMN updated_at TYPE timestamp USING updated_at::timestamp;
