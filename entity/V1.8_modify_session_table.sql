-- Remove `comment_id` from `session` table
ALTER TABLE public."session" DROP CONSTRAINT session_comment_id_fkey;
ALTER TABLE public."session" DROP COLUMN comment_id;
