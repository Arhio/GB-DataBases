ALTER TABLE communities_users
  ADD CONSTRAINT `communities_users_communities_id_fk` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `communities_users_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT; -- 1
 
 
ALTER TABLE friendship
  ADD CONSTRAINT `friendship_friend_id_fk` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `friendship_friendship_statuses_id_fk` FOREIGN KEY (`status_id`) REFERENCES `friendship_statuses` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `friendship_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT; -- 1
 
ALTER TABLE likes
  CONSTRAINT `likes_target_types_id_fk` FOREIGN KEY (`target_type_id`) REFERENCES `target_types` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `likes_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT; -- 1
 
ALTER TABLE media
  CONSTRAINT `media_media_types_id_fk` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`)); -- 1
 
ALTER TABLE messages
  CONSTRAINT `messages_from_user_id_fk` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_media_id_fk` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL,
  CONSTRAINT `messages_to_user_id_fk` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`); -- 1
 
ALTER TABLE posts
  CONSTRAINT `posts_communities_id_fk` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_media_id_fk` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL,
  CONSTRAINT `posts_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT; -- 1
 
ALTER TABLE profiles
  CONSTRAINT `profiles_photo_id_fk` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`) ON DELETE SET NULL,
  CONSTRAINT `profiles_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE; -- 1

ALTER TABLE users
  CONSTRAINT `users_user_statuses_id_fk` FOREIGN KEY (`status_id`) REFERENCES `user_statuses` (`id`) ON DELETE RESTRICT; -- 1
 

 DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
); -- 2

DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts'); -- 2

INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages; -- 2
 
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  views_counter INT UNSIGNED DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
); -- 2
  

SELECT gander, COUNT(*) FROM 
			(SELECT user_id, 
				(SELECT gender FROM profiles WHERE likes.user_id = profiles.user_id) AS  gander  
			FROM likes) AS tbl1 
		GROUP BY gander  -- 3

SELECT user_id, COUNT(*) AS _count  FROM likes WHERE user_id IN 
		(SELECT user_id 
			FROM (SELECT user_id, TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age 
		FROM profiles ORDER BY age LIMIT 10) AS tab) 
	GROUP BY user_id -- 4

SELECT user_id, (Amount1 + Amount2 + Amount3) AS sums FROM (
select user_id
, (SELECT COUNT(*) FROM likes WHERE likes.user_id = profiles.user_id) as Amount1
, (SELECT COUNT(*) FROM media WHERE media.user_id = profiles.user_id) as Amount2
, (SELECT COUNT(*) FROM posts WHERE posts.user_id = profiles.user_id) as Amount3
from profiles) AS tbl1 ORDER BY sums, user_id LIMIT 10; -- 5
