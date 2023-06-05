ALTER TABLE public.users ADD login_method varchar(100) NULL;
ALTER TABLE public.users ALTER COLUMN birthday DROP NOT NULL;
ALTER TABLE public.users ALTER COLUMN "password" DROP NOT NULL;
