ALTER TABLE public."session" ALTER COLUMN is_confirm SET NOT NULL;
ALTER TABLE public."session" ALTER COLUMN is_confirm SET DEFAULT false;
ALTER TABLE public."session" ALTER COLUMN is_reject SET NOT NULL;
ALTER TABLE public."session" ALTER COLUMN is_reject SET DEFAULT false;
ALTER TABLE public."session" ALTER COLUMN is_cancel SET NOT NULL;
ALTER TABLE public."session" ALTER COLUMN is_cancel SET DEFAULT false;
