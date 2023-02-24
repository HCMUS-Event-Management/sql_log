ALTER TABLE public.categories
DROP COLUMN description;

ALTER TABLE public.events
ADD COLUMN "type" VARCHAR(100);

alter table public.ticket 
alter column buyer_id drop not null;
