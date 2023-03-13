
CREATE TABLE IF NOT EXISTS proposal_session_ticket
(
    id           BIGSERIAL PRIMARY KEY,
    ticket_title text,
    "session_id" BIGINT NOT NULL,
    start_time_for_sell     TIMESTAMP,
    end_time_for_sell      TIMESTAMP,
    type         varchar(50),
    price        double precision default 0,
    quantity     BIGINT default 0,
    minimum_ticket_purchased bigint default 1,
    FOREIGN KEY (session_id) REFERENCES session (id)
);