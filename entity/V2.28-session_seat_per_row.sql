ALTER TABLE proposal_session_ticket
    ADD IF NOT EXISTS seat_per_row bigint default 7;

