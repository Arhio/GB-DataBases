SELECT AVG(TIMESTAMPDIFF(YEAR, profiles.birthday, NOW())) AS avg_age FROM users, profiles WHERE users.id = profiles.user_id;
