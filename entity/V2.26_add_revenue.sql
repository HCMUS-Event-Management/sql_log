ALTER TABLE events
    ADD COLUMN IF NOT EXISTS revenue double precision default 0;
