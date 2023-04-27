

ALTER TABLE public.ticket
    ADD COLUMN IF NOT EXISTS proposal_session_ticket_id bigint;


ALTER table public.ticket
    ADD CONSTRAINT fk_ticket_proposal_id FOREIGN KEY (proposal_session_ticket_id) references proposal_session_ticket(id);