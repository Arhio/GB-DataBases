SELECT gender, COUNT(*) AS count_likes FROM profiles WHERE user_id IN (SELECT user_id FROM likes) GROUP BY gender ORDER BY COUNT(*) DESC LIMIT 1 -- 3

SELECT COUNT(*) FROM likes WHERE user_id IN (SELECT user_id  FROM (SELECT user_id, TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age FROM profiles ORDER BY age LIMIT 10) AS tab) -- 4

SELECT user_id, (Amount1 + Amount2 + Amount3) AS sums FROM (
select user_id
, (SELECT COUNT(*) AS count_ FROM likes WHERE likes.user_id = profiles.user_id GROUP BY user_id) as Amount1
, (SELECT COUNT(*) AS count_ FROM media WHERE media.user_id = profiles.user_id GROUP BY user_id) as Amount2
, (SELECT COUNT(*) AS count_ FROM posts WHERE posts.user_id = profiles.user_id GROUP BY user_id) as Amount3
from profiles) AS tbl1 ORDER BY sums, user_id LIMIT 10 -- 5
