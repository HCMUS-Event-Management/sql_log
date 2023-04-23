ALTER TABLE public.proposal_session_ticket DROP CONSTRAINT proposal_session_ticket_session_id_fkey;
ALTER TABLE public.proposal_session_ticket ADD CONSTRAINT proposal_session_ticket_session_id_fkey FOREIGN KEY (session_id) REFERENCES public."session"(id) ON DELETE CASCADE;
