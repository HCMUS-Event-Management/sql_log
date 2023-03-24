-- Update 'users'
ALTER TABLE public.users DROP IF EXISTS uuid;
ALTER TABLE public.users RENAME COLUMN profile_image TO avatar;
ALTER TABLE public.users DROP if EXISTS is_forgot_password;
ALTER TABLE public.users ALTER COLUMN created_on SET DEFAULT now();
ALTER TABLE public.users RENAME COLUMN created_on TO created_at;
ALTER TABLE public.users DROP username;
ALTER TABLE public.users ALTER COLUMN full_name SET NOT NULL;

-- Update 'roles'
ALTER TABLE public.roles DROP IF EXISTS is_deleted;