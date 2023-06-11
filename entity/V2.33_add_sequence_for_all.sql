-- Categories
SELECT setval('categories_id_seq', (SELECT MAX(id) + 1 FROM categories), FALSE);

-- Locations
SELECT setval('locations_id_seq', (SELECT MAX(id) + 1 FROM locations), FALSE);

-- Drop `notifications` table
drop table if exists notifications;