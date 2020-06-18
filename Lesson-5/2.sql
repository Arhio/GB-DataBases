USE vk2;

DROP TABLE users;

CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50),
  `created_at` VARCHAR(50) DEFAULT '20.10.2017 8:10',
  `updated_at` VARCHAR(50) DEFAULT '20.10.2017 8:10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO users (name) VALUE ('A');
INSERT INTO users (name) VALUE ('A');
INSERT INTO users (name) VALUE ('A');
INSERT INTO users (name) VALUE ('A');
INSERT INTO users (name) VALUE ('A');

SELECT * FROM users;

UPDATE users SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %h:%i'), updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i');

SELECT * FROM users;

ALTER TABLE users MODIFY created_at DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE users MODIFY updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

SELECT * FROM users;