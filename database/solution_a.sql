-- 1. Lấy ra danh sách người dùng theo thứ tự tên theo Alphabet (A->Z)
SELECT * FROM users ORDER BY user_name ASC;

-- 2. Lấy ra 07 người dùng theo thứ tự tên theo Alphabet (A->Z)
SELECT * FROM users ORDER BY user_name ASC LIMIT 7;

-- 3. Lấy danh sách người dùng theo Alphabet (A->Z), trong đó tên có chữ 'a'
SELECT * FROM users WHERE user_name LIKE '%a%' ORDER BY user_name ASC;

-- 4. Lấy danh sách người dùng có tên bắt đầu bằng chữ 'm'
SELECT * FROM users WHERE user_name LIKE 'm%';

-- 5. Lấy danh sách người dùng có tên kết thúc bằng chữ 'i'
SELECT * FROM users WHERE user_name LIKE '%i';

-- 6. Lấy danh sách người dùng có email Gmail
SELECT * FROM users WHERE user_email LIKE '%@gmail.com';

-- 7. Lấy danh sách người dùng có email Gmail và tên bắt đầu bằng chữ 'm'
SELECT * FROM users WHERE user_email LIKE '%@gmail.com' AND user_name LIKE 'm%';

-- 8. Lấy danh sách người dùng có email Gmail, tên chứa chữ 'i' và dài hơn 5 ký tự
SELECT * FROM users WHERE user_email LIKE '%@gmail.com' AND user_name LIKE '%i%' AND LENGTH(user_name) > 5;

-- 9. Lấy danh sách người dùng có chữ 'a', tên dài từ 5 đến 9 ký tự, email Gmail, và tên email có chữ 'i'
SELECT * FROM users WHERE user_name LIKE '%a%' AND LENGTH(user_name) BETWEEN 5 AND 9 AND user_email LIKE '%@gmail.com' AND SUBSTRING_INDEX(user_email, '@', 1) LIKE '%i%';

-- 10. Lấy danh sách người dùng có chữ 'a', dài từ 5-9 ký tự hoặc chữ 'i', dài <9 hoặc email Gmail có chữ 'i' trong tên
SELECT * FROM users WHERE (user_name LIKE '%a%' AND LENGTH(user_name) BETWEEN 5 AND 9) 
   OR (user_name LIKE '%i%' AND LENGTH(user_name) < 9) 
   OR (user_email LIKE '%@gmail.com' AND SUBSTRING_INDEX(user_email, '@', 1) LIKE '%i%');
