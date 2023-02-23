ALTER TABLE categories
DROP COLUMN description;

ALTER TABLE events
ADD COLUMN "type";