-- Set default login method for all sample user data
update users set login_method = 'basic' where id in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);