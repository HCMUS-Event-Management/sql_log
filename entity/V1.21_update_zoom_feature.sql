-- Add Passcode, MeetingID and Link for Zoom
ALTER TABLE public."session" DROP COLUMN holder_id;
ALTER TABLE public."session" RENAME COLUMN zoom_password TO zoom_passcode;
ALTER TABLE public."session" ALTER COLUMN zoom_passcode TYPE varchar(10) USING zoom_passcode::varchar;
ALTER TABLE public."session" RENAME COLUMN zoom_meeting_number TO zoom_meeting_id;
ALTER TABLE public."session" ADD zoom_link varchar(100) NULL;
