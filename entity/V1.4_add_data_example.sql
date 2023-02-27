--users
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
--category
INSERT INTO categories(id, "name") VALUES
(1, 'Công nghệ thông tin'),
(2, 'Sinh học'),
(3, 'Giải trí'),
(4, 'Thể thao'),
(5, 'Âm nhạc');
--events
INSERT INTO events(id, title, "description", open_time, due_time, start_at, end_at, status, url_web, category_id, created_by, images, "location", seating_plan, "type") VALUES
(1, 'Sự kiện ChatGPT và AI', 'ChatGPT và AI: Thách thức và cơ hội trong giáo dục đại học', '2023-02-18 07:45:00', '2023-02-23 11:45:00', '2023-02-25 07:45:00', '2023-02-25 11:45:00', 'approve', 'url_fake/fakereal', '1', '1', NULL, 'Trường Test', 'seating test1', 'paid'),
(2, 'Sự kiện Hội thảo', 'Metaverse: Thách thức và cơ hội trong thế giới ảo', '2023-03-20 07:45:00', '2023-03-25 10:45:00', '2023-03-29 07:30:00', '2023-03-29 10:30:00', 'waiting', 'url_fake/fakereal', '1', '2', NULL, 'Giảng đường', 'seating test2', 'paid'),
(3, 'Workshop AI và sức mạnh', 'AI: Sức mạnh trong đời sống hiện nay', '2022-11-18 07:50:00', '2022-11-20 11:50:00', '2022-12-25 07:45:00', '2022-12-25 11:45:00', 'approve', 'url_fake/fakereal', '1', '1', NULL, 'Hội trường I', 'seating test3', 'paid'),
(4, 'Sinh học và phát triển men vi sinh', 'Men vi sinh tiêu hoá từ thực vật', '2023-02-18 07:45:00', '2023-02-18 11:00:00', '2023-02-25 13:45:00', '2023-02-25 16:30:00', 'draft', 'url_fake/fakereal', '2', '3', NULL, 'I62', 'seating test4', 'paid'),
(5, 'Thức uống sinh học cho hệ tiêu hoá', 'Thức uống sinh học làm từ vi khuẩn lúa có tác động tích cực cho hệ tiêu hoá', '2022-12-15 08:45:00', '2022-12-19 11:45:00', '2022-12-18 09:00:00', '2022-12-18 10:45:00', 'cancel', 'url_fake/fakereal', '2', '5', NULL, 'I62', 'seating test5', 'paid'),
(6, 'Debate ngủ sớm trong thực tế', 'Debate ngủ sớm có ích cho sức khỏe giữa trường THPT chuyên Lê Hồng Phong và trường THPT Năng khiếu', '2023-03-01 07:30:00', '2023-03-06 03:00:00', '2023-03-07 07:45:00', '2023-03-07 10:45:00', 'approve', 'url_fake/fakereal', '3', '1', NULL, 'Trường Test', 'seating test1', 'paid'),
(7, 'Workshop:Tiếng Anh trong IT', 'Tầm quan trọng của tiếng Anh trong việc làm IT', '2023-03-10 08:45:00', '2023-03-14 02:00:00', '2023-03-15 07:30:00', '2023-03-29 09:30:00', 'approve', 'url_fake/fakereal', '1', '4', NULL, 'I62', 'test2 seating', 'paid'),
(8, 'gRPC', 'Ứng dụng gRPC', '2022-11-18 07:50:00', '2022-11-22 04:00:00', '2022-12-25 07:45:00', '2022-12-25 11:45:00', 'approve', 'url_fake/fakereal', '1', '1', NULL, 'Hội trường I', 'seating test3', 'free');
--notification
INSERT INTO notifications(id, event_id, receiver_id,  "content", linknoti, is_read) VALUES
(1, '1', '1', 'ChatGPT và AI sắp diễn ra', 'url_web/linknoti_test', true),
(2, '2', '2', 'Sự kiện Hội thảo sắp diễn ra', 'url_web/linknoti_test2', true),
(3, '3', '3', 'Workshop AI và sức mạnh sắp diễn ra', 'url_web/linknoti_test3', true),
(4, '4', '4', 'Sinh học và phát triển men vi sinh sắp diễn ra', 'url_web/linknoti_test4', true),
(5, '5', '5', 'Thức uống sinh học cho hệ tiêu hoá sắp diễn ra', 'url_web/linknoti_test5', true),
(6, '6', '6', 'Debate ngủ sớm trong thực tế sắp diễn ra', 'url_web/linknoti_test6', true),
(7, '7', '7', 'Workshop:Tiếng Anh trong IT sắp diễn ra', 'url_web/linknoti_test7', true),
(8, '8', '8', 'gRPC sắp diễn ra', 'url_web/linknoti_test8', true);
--ticket
INSERT INTO ticket(id, "owner_id", "event_id", "buyer_id", qr_code, price, discount, is_sold, is_checkin) VALUES
(1, '1', '3', '1', 'qr_test1', '10000', '0', 'TRUE', 'TRUE'), 
(2, '2', '3', '1', 'qr_test2', '10000', '0', 'TRUE', 'TRUE'), 
(3, '3', '3', '1', 'qr_test3', '10000', '0', 'TRUE', 'TRUE'), 
(4, '4', '3', '5', 'qr_test4', '10000', '0', 'TRUE', 'TRUE'), 
(5, '5', '3', '5', 'qr_test5', '10000', '0', 'TRUE', 'TRUE'), 
(6, '6', '3', '6', 'qr_test6', '10000', '0', 'TRUE', 'TRUE'), 
(7, '7', '3', '6', 'qr_test7', '10000', '0', 'TRUE', 'TRUE'), 
(8, '9', '3', '8', 'qr_test8', '10000', '0', 'TRUE', 'FALSE'),
(9, NULL, '3', '8', 'qr_test9', '10000', '0', 'TRUE', 'FALSE'),
(10, NULL, '4', NULL, 'qr_test10', '10000', '0', 'FALSE', 'FALSE'),
(11, NULL, '4', NULL, 'qr_test11', '10000', '0', 'FALSE', 'FALSE'),
(12, NULL, '4', NULL, 'qr_test12', '10000', '0', 'FALSE', 'FALSE'),
(13, NULL, '4', NULL, 'qr_test13', '10000', '0', 'FALSE', 'FALSE'),
(14, NULL, '4', NULL, 'qr_test14', '10000', '0', 'FALSE', 'FALSE'),
(15, NULL, '4', NULL, 'qr_test15', '10000', '0', 'FALSE', 'FALSE'),
(16, NULL, '4', NULL, 'qr_test16', '10000', '0', 'FALSE', 'FALSE'),
(17, NULL, '4', NULL, 'qr_test17', '10000', '0', 'FALSE', 'FALSE'),
(18, NULL, '4', NULL, 'qr_test18', '10000', '0', 'FALSE', 'FALSE'),
(19, NULL, '4', NULL, 'qr_test19', '10000', '0', 'FALSE', 'FALSE'),
(20, NULL, '4', NULL, 'qr_test20', '10000', '0', 'FALSE', 'FALSE'),
(21, NULL, '1', NULL, 'qr_test21', '10000', '0', 'FALSE', 'FALSE'),
(22, NULL, '1', NULL, 'qr_test12', '10000', '0', 'FALSE', 'FALSE'),
(23, NULL, '1', NULL, 'qr_test13', '10000', '0', 'FALSE', 'FALSE'),
(24, NULL, '1', NULL, 'qr_test14', '10000', '0', 'FALSE', 'FALSE'),
(25, NULL, '1', NULL, 'qr_test15', '10000', '0', 'FALSE', 'FALSE'),
(26, NULL, '1', NULL, 'qr_test16', '10000', '0', 'FALSE', 'FALSE'),
(27, NULL, '1', NULL, 'qr_test17', '10000', '0', 'FALSE', 'FALSE'),
(28, '4', '1', '5', 'qr_test18', '10000', '0', 'FALSE', 'FALSE'),
(29, '3', '1', '1', 'qr_test19', '10000', '0', 'FALSE', 'FALSE'),
(30, '2', '1', '1', 'qr_test20', '10000', '0', 'FALSE', 'FALSE'),
(31, '1', '1', '1', 'qr_test21', '20000', '0', 'TRUE', 'FALSE'),
(32, '5', '1', '1', 'qr_test21', '20000', '0', 'TRUE', 'TRUE');
--comment
INSERT INTO "comments"(id, "user_id", "event_id", "content") VALUES
(1, '1', '1', 'Bình luận thứ nhất về sự kiện 1 của user 1'),
(2, '2', '2', 'Bình luận thứ nhất về sự kiện 2 của user 2'),
(3, '2', '3', 'Bình luận thứ nhất về sự kiện 3 của user 2'),
(4, '1', '2', 'Bình luận thứ nhất về sự kiện 2 của user 1'),
(5, '4', '2', 'Bình luận thứ nhất về sự kiện 2 của user 4'),
(6, '5', '2', 'Bình luận thứ nhất về sự kiện 5 của user 2'),
(7, '6', '1', 'Bình luận thứ nhất về sự kiện 6 của user 1'),
(8, '3', '2', 'Bình luận thứ nhất về sự kiện 2 của user 3'),
(9, '1', '2', 'Bình luận thứ hai trong sự kiện 2 của user 1');
--review
INSERT INTO "reviews"(id, "user_id", "event_id", "content") VALUES
(1, '1', '1', 'Đánh giá của user 1 cho sự kiện 1'),
(2, '2', '1', 'Đánh giá của user 2 cho sự kiện 1'),
(3, '3', '1', 'Đánh giá của user 3 cho sự kiện 1'),
(4, '4', '1', 'Đánh giá của user 4 cho sự kiện 1'),
(5, '1', '2', 'Đánh giá của user 1 cho sự kiện 2'),
(6, '2', '2', 'Đánh giá của user 2 cho sự kiện 2'),
(7, '5', '3', 'Đánh giá của user 5 cho sự kiện 3'),
(8, '6', '3', 'Đánh giá của user 6 cho sự kiện 3'),
(9, '1', '3', 'Đánh giá của user 1 cho sự kiện 3'),
(10, '8', '1', 'Đánh giá của user 8 cho sự kiện 1');