-- Update 'users'
ALTER TABLE public.users DROP COLUMN IF EXISTS uuid;
ALTER TABLE public.users RENAME COLUMN profile_image TO avatar;
ALTER TABLE public.users DROP COLUMN IF_EXISTS is_forgot_password;
ALTER TABLE public.users ALTER COLUMN created_on SET DEFAULT now();

-- Update 'roles'
ALTER TABLE public.roles DROP COLUMN IF EXISTS is_deleted;
