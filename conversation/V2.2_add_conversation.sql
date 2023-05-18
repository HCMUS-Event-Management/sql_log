

create table if not exists "conversations"(
	id			            bigserial primary key,
	creator_id              bigint,
    recipient_id            bigint,
    last_message_sent_id    bigint, 
    last_message_sent_at    TIMESTAMP DEFAULT NOW(),
    created_at 		        TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(creator_id) REFERENCES users(id),
    FOREIGN KEY(recipient_id) REFERENCES users(id),
);


create table if not exists "messages"(
	id			    bigserial primary key,
	content		    text,
    author_id       bigint,
    conversation_id bigint,
	created_at 		TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(conversation_id) REFERENCES conversations(id),
    FOREIGN KEY(author_id) REFERENCES users(id)
);

create table if not exists "conversation_participant"(
	user_id			    bigint,
	conversation_id		    bigint,
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(conversation_id) REFERENCES conversations(id)
);

ALTER TABLE "conversations"
ADD FOREIGN KEY (last_message_sent_id) REFERENCES messages (id);

INSERT INTO public.users
(full_name, email, is_active, is_deleted)
values
('Nguyễn Thanh Vũ', 'ntvu@gmail.com', true, false),
('Nguyễn Sơn', 'nson@gmail.com', true, false),
('Đoàn Hương Ngàn', 'dhngan@gmail.com', true, false),
('Nguyễn Đức Tủn', 'nddat1811@gmail.com', true, false),
('Phạm Ngọc Anh', 'pnanh@gmail.com', true, false),
('Doãn Nguyễn Hương Lan', 'dnhlan@gmail.com', true, false);