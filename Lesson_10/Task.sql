USE vk;

-- 1 --
CREATE INDEX users_first_name_idx ON users(first_name);
CREATE INDEX users_email_idx ON users(email);
CREATE INDEX users_phone_idx ON users(phone);

CREATE INDEX messages_from_user_id_idx ON messages(from_user_id);

CREATE INDEX media_user_id_idx ON media(user_id);

CREATE INDEX media_filename_idx ON media(filename);

CREATE INDEX profiles_city_idx ON profiles(city);

CREATE INDEX profiles_country_idx ON profiles(country);

CREATE INDEX likes_target_id_idx ON likes(target_id);

CREATE INDEX posts_user_id_idx ON posts(user_id);


-- 2 --
SELECT DISTINCT communities_.name,
	COUNT(*) OVER() / (SELECT COUNT(*) FROM communities) AS "average",
	MIN(profiles.birthday) OVER w AS min_bithday_user,
	MAX(profiles.birthday) OVER w AS max_bithday_user,
	COUNT(profiles.birthday) OVER w AS total_communities,
	COUNT(profiles.birthday) OVER() AS total_system,
	COUNT(profiles.birthday) OVER w / COUNT(profiles.birthday) OVER() * 100 AS "%%"
	FROM ((SELECT id, name FROM communities
				 UNION
				 SELECT NULL AS id, NULL AS name) AS communities_
		LEFT JOIN communities_users
			ON communities_users.community_id = communities_.id
		LEFT JOIN profiles
			ON profiles.user_id = communities_users.user_id
				OR (profiles.user_id NOT IN (SELECT DISTINCT user_id FROM communities_users)
					AND communities_.id IS NULL))
			WINDOW w AS (PARTITION BY communities_.id);