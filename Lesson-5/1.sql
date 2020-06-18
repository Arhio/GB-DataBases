CREATE DATABASE vk2;

USE vk2;

CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO users (created_at, updated_at) VALUE (NULL, NULL);
INSERT INTO users (created_at, updated_at) VALUE (NULL, NULL);
INSERT INTO users (created_at, updated_at) VALUE (NULL, NULL);
INSERT INTO users (created_at, updated_at) VALUE (NULL, NULL);
INSERT INTO users (created_at, updated_at) VALUE (NULL, NULL);

SELECT * FROM users;

UPDATE users SET created_at = CURRENT_TIMESTAMP, updated_at = CURRENT_TIMESTAMP;

SELECT * FROM users;

