ALTER TABLE public."session" ADD zoom_start_url varchar(1000) NULL;
ALTER TABLE public."session" DROP COLUMN zoom_link;
ALTER TABLE public."session" ADD zoom_join_url varchar(255) NULL;
