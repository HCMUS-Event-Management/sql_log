-- Drop 2 column about time and modify `image` field
ALTER TABLE public.events RENAME COLUMN images TO image;
ALTER TABLE public.events ALTER COLUMN image TYPE varchar(500) USING image::varchar;
ALTER TABLE public.events DROP COLUMN open_time;
ALTER TABLE public.events DROP COLUMN due_time;

-- Change `minimum_ticket_purchased` to `maximum_ticket_purchased`
ALTER TABLE public.proposal_session_ticket RENAME COLUMN minimum_ticket_purchased TO maximum_ticket_purchased;
