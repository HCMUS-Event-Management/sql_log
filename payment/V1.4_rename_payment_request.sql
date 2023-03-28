ALTER TABLE payment_request
    RENAME COLUMN event_id TO event_info_id;


ALTER TABLE payment_request
    ADD CONSTRAINT fk_event_info_pr FOREIGN KEY (event_info_id) references event_information(id);

