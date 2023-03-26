-- Drop status field in session table
ALTER TABLE public."session" DROP COLUMN is_confirm;
ALTER TABLE public."session" DROP COLUMN is_reject;
ALTER TABLE public."session" DROP COLUMN is_cancel;
ALTER TABLE public."session" DROP COLUMN joined_users;
ALTER TABLE public."session" DROP COLUMN limit_number;
ALTER TABLE public."session" DROP COLUMN "name";
ALTER TABLE public."session" DROP COLUMN refund_number;

-- Add zoom information for session table
ALTER TABLE public."session" ADD zoom_meeting_number varchar(20) NULL;
ALTER TABLE public."session" ADD zoom_password varchar(10) NULL;
ALTER TABLE public."session" ADD holder_id bigint NULL;
