

CREATE TABLE IF NOT EXISTS users(
	id					BIGSERIAL	PRIMARY KEY,
	full_name			VARCHAR(50),
	email 				VARCHAR(255) NOT NULL,
	phone				VARCHAR(20),
	identity_card		VARCHAR(50),
	gender				VARCHAR(50),
	"address"			VARCHAR(255),
	is_active			BOOLEAN DEFAULT FALSE,
	is_deleted			BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS payment_request(
	id					bigserial	PRIMARY KEY,
	price		        double precision not null,
	currency 			varchar(255) NOT NULL,
	"method"			    varchar(255) NOT NULL,
	intent			    varchar(255),
	requester_id			bigint,
	payment_id          varchar(255),
	description         text,
	status 				varchar(50),
	FOREIGN KEY(requester_id) REFERENCES users(id)
);


create table if not exists purchased_ticket(
	id					bigserial	PRIMARY KEY,
	ticket_code 		varchar(255) NOT NULL,
	price			    double precision not null,
	payment_request_id       bigint,
	FOREIGN KEY(payment_request_id) REFERENCES payment_request(id)
);

INSERT INTO users(id, full_name, email, phone, identity_card, gender, "address", is_active, is_deleted) VALUES
(1, 'Nguyễn Đức Đạt', 'nddat1811@gmail.com', '0779455498', '045201007435', 'Nam', 'HCM City', TRUE, FALSE),
(2, 'Nguyễn Thanh Vũ', 'ntvu@gmail.com', '0779455456', '045201007436', 'Nam', 'HCM City', TRUE, FALSE),
(3, 'Phạm Ngọc Anh', 'pnanh@gmail.com', '0779455444',  '045201007235', 'Nam', 'HCM City', TRUE, FALSE),
(4, 'Doãn Nguyễn Hương Lan', 'dnhlan@gmail.com', '0779412344', '045211003235', 'Nữ', 'HCM City', TRUE, FALSE),
(5, 'Huỳnh Hoàng Giang', 'hhgiang@gmail.com', '0779419543', '045215314235', 'Nữ', 'HCM City', TRUE, FALSE),
(6, 'Nguyễn Sơn', 'nson@gmail.com', '0822000111', '045123045862', 'HCM City', 'Nam', TRUE, FALSE),
(7, 'Đoàn Hương Ngàn', 'dhngan@gmail.com', '0829412344', '045213303235', 'Ha Noi City', 'Nam', TRUE, FALSE),
(8, 'Lê Xuân Hoài', 'lxuanhoai@gmail.com', '0123419543', '045216494235', 'Hai Phong City', 'Nam', TRUE, FALSE),
(9, 'Tố Hữu', 'thuu@gmail.com', '0779415023', '045211003235', 'Huế City', 'Nam', TRUE, FALSE),
(10, 'Seraphine Mie', 'seraphine@gmail.com', '0822111444', '013215314235', 'Riot', 'Nữ', TRUE, FALSE);


alter table public.purchased_ticket 
 add if not exists status varchar(255);