ALTER table public.session
    ADD COLUMN IF NOT EXISTS start_at TIMESTAMP;

ALTER table public.session
    ADD COLUMN IF NOT EXISTS end_at TIMESTAMP;

ALTER table ticket
    ADD COLUMN IF NOT EXISTS session_id bigint;