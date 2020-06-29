USE vk;

-- 3 --

SELECT gender, COUNT(gender) AS sum FROM likes 
	JOIN profiles 
		ON likes.target_id = profiles.user_id
	GROUP BY gender 
	ORDER BY gender DESC
	LIMIT 1; -- 3

SELECT * FROM likes WHERE likes.target_type_id = 2; -- Проверка на общее количество лайков для всех пользователей


-- 4 --

SELECT profiles.user_id, profiles.birthday, COUNT(tbl1.created_at) AS count_ FROM profiles 
	LEFT JOIN (SELECT target_id AS user_id, created_at FROM likes WHERE target_type_id = (SELECT id FROM target_types WHERE name = 'users')
					UNION ALL
						SELECT media.user_id, media.created_at FROM media 
							JOIN likes 
								ON media.id = likes.target_id AND likes.target_type_id = (SELECT id FROM target_types WHERE name = 'media')
					UNION ALL
						SELECT messages.from_user_id, messages.created_at FROM messages 
							JOIN likes 
								ON messages.id = likes.target_id AND likes.target_type_id = (SELECT id FROM target_types WHERE name = 'messages')
					UNION ALL
						SELECT posts.user_id, posts.created_at FROM posts
							JOIN likes 
								ON posts.id = likes.target_id AND likes.target_type_id = (SELECT id FROM target_types WHERE name = 'posts')) AS tbl1
		ON profiles.user_id = tbl1.user_id
	GROUP BY profiles.user_id
	ORDER BY profiles.birthday DESC, count_
	LIMIT 10; -- 4 UNION ALL
	
	

SELECT profiles.user_id, profiles.birthday, COUNT(DISTINCT tbl_users.rnd) + COUNT(DISTINCT tbl_media.rnd) + COUNT(DISTINCT tbl_messages.rnd) + COUNT(tbl_posts.rnd) AS count_ FROM profiles
	LEFT JOIN (SELECT target_id AS user_id, created_at, RAND() AS rnd FROM likes WHERE target_type_id = (SELECT id FROM target_types WHERE name = 'users')) AS tbl_users
		ON profiles.user_id = tbl_users.user_id
	LEFT JOIN (SELECT media.user_id, media.created_at, RAND() AS rnd FROM media 
					JOIN likes 
						ON media.id = likes.target_id AND likes.target_type_id = (SELECT id FROM target_types WHERE name = 'media')) AS tbl_media
		ON profiles.user_id = tbl_media.user_id
	LEFT JOIN (SELECT messages.from_user_id AS user_id, messages.created_at, RAND() AS rnd FROM messages 
							JOIN likes 
								ON messages.id = likes.target_id AND likes.target_type_id = (SELECT id FROM target_types WHERE name = 'messages')) AS tbl_messages
		ON profiles.user_id = tbl_messages.user_id
	LEFT JOIN (SELECT posts.user_id, posts.created_at, RAND() AS rnd FROM posts
							JOIN likes 
								ON posts.id = likes.target_id AND likes.target_type_id = (SELECT id FROM target_types WHERE name = 'posts')) AS tbl_posts
		ON profiles.user_id = tbl_posts.user_id
	GROUP BY profiles.user_id
	ORDER BY profiles.birthday DESC, count_
	LIMIT 10; -- 4 JOIN ONLY


-- 5 --
	
SELECT profiles.user_id, profiles.updated_at, COUNT(tbl1.user_id) AS count_ FROM profiles 
	LEFT JOIN (SELECT user_id, created_at FROM likes 
					UNION ALL SELECT user_id, created_at FROM media 
					UNION ALL SELECT user_id, created_at FROM posts) AS tbl1
		ON profiles.user_id = tbl1.user_id
	GROUP BY profiles.user_id 
	ORDER BY count_, profiles.updated_at
	LIMIT 10; -- 5 UNION
	

SELECT profiles.user_id, profiles.updated_at, COUNT(DISTINCT tbl_likes.rnd) + COUNT(DISTINCT tbl_media.rnd) + COUNT(tbl_posts.rnd) AS count_ FROM profiles
     LEFT JOIN (SELECT user_id, RAND() AS rnd FROM likes) AS tbl_likes
     	ON profiles.user_id = tbl_likes.user_id
     LEFT JOIN (SELECT user_id, RAND() AS rnd FROM media) AS tbl_media
     	ON profiles.user_id = tbl_media.user_id
     LEFT JOIN (SELECT user_id, RAND() AS rnd FROM posts) AS tbl_posts
     	ON profiles.user_id = tbl_posts.user_id
	GROUP BY profiles.user_id 
	ORDER BY count_, profiles.updated_at
	LIMIT 10; -- 5 JOIN ONLY
     	
     	