ALTER TABLE public.categories
DROP COLUMN description;

ALTER TABLE public.events
ADD COLUMN "type" VARCHAR(100);