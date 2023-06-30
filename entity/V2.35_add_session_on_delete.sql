ALTER TABLE public.ticket DROP CONSTRAINT fk_ticket_proposal_id;
ALTER TABLE public.ticket ADD CONSTRAINT fk_ticket_proposal_id FOREIGN KEY (proposal_session_ticket_id) REFERENCES public.proposal_session_ticket(id) ON DELETE CASCADE;
