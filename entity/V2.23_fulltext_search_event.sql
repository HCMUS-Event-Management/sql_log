CREATE EXTENSION IF NOT EXISTS pg_trgm;

CREATE INDEX idx_name ON events USING gin(title gin_trgm_ops, description gin_trgm_ops);