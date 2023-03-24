-- OTP table
ALTER TABLE public.otp ALTER COLUMN expired_time TYPE timestamp with time zone USING expired_time::timestamp with time zone;

-- User table
ALTER TABLE public.users ALTER COLUMN created_at TYPE timestamp with time zone USING created_at::timestamp with time zone;
ALTER TABLE public.users ALTER COLUMN updated_at TYPE timestamp with time zone USING updated_at::timestamp with time zone;
ALTER TABLE public.users ALTER COLUMN last_login TYPE timestamp with time zone USING last_login::timestamp with time zone;

-- User_role table
ALTER TABLE public.user_roles ALTER COLUMN updated_at TYPE timestamp with time zone USING updated_at::timestamp with time zone;

-- Role_permission table
ALTER TABLE public.roles_permissions ALTER COLUMN updated_at TYPE timestamp with time zone USING updated_at::timestamp with time zone;

-- Event table
ALTER TABLE public.events ALTER COLUMN created_at TYPE timestamp with time zone USING created_at::timestamp with time zone;
ALTER TABLE public.events ALTER COLUMN updated_at TYPE timestamp with time zone USING updated_at::timestamp with time zone;
ALTER TABLE public.events ALTER COLUMN start_at TYPE timestamp with time zone USING start_at::timestamp with time zone;
ALTER TABLE public.events ALTER COLUMN end_at TYPE timestamp with time zone USING end_at::timestamp with time zone;
