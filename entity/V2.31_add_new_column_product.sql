ALTER TABLE products
    ADD IF NOT EXISTS remaining_product bigint default 0;

ALTER TABLE proposal_product
    ADD IF NOT EXISTS payment_method varchar(255);


