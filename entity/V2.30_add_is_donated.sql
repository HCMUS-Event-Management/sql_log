alter table ticket
add if not exists is_donated boolean;

update ticket set is_donated = false;
