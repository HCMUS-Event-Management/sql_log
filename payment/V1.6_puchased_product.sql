create table if not exists purchased_product(
                                               id					bigserial	PRIMARY KEY,
                                               product_code 		varchar(255) NOT NULL,
                                               price			    double precision not null,
                                               payment_request_id       bigint,
                                               FOREIGN KEY(payment_request_id) REFERENCES payment_request(id)
);
ALTER table purchased_product
    add if not exists status varchar(255);
