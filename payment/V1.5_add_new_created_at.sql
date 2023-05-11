alter table payment_request
    add if not exists created_at timestamp with time zone;

alter table payment_request
    add if not exists purchased_at timestamp with time zone;
