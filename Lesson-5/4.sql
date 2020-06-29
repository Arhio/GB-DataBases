CREATE TABLE `users` (
           `id` int unsigned NOT NULL AUTO_INCREMENT,
           `birthday_at` datetime DEFAULT CURRENT_TIMESTAMP,
           PRIMARY KEY (`id`)
         ) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO users (birthday_at) VALUE ('1990-01-01 18:00:00');
INSERT INTO users (birthday_at) VALUE ('1990-05-01 18:00:00');
INSERT INTO users (birthday_at) VALUE ('1990-08-01 18:00:00');
INSERT INTO users (birthday_at) VALUE ('1990-10-01 18:00:00');

SELECT * FROM users WHERE MONTHNAME(birthday_at) in ('may', 'august');
