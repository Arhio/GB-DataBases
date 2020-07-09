-- Урок 10
USE vk;

SELECT DISTINCT communities_.name,
	COUNT(*) OVER() / (SELECT COUNT(*) FROM communities) AS "average",
	MIN(profiles.birthday) OVER w AS min_bithday_user,
	MAX(profiles.birthday) OVER w AS max_bithday_user,
	COUNT(*) OVER w AS total_communities,
	COUNT(*) OVER() AS total_system,
	COUNT(*) OVER w / COUNT(*) OVER() * 100 AS "%%"
	FROM ((SELECT id, name FROM communities
				 UNION 
				 SELECT 0 AS id, NULL AS name) AS communities_
		LEFT JOIN communities_users 
			ON communities_users.community_id = communities_.id
		LEFT JOIN profiles 
			ON profiles.user_id = communities_users.user_id)
			WINDOW w AS (PARTITION BY communities_.id);
		
SELECT id, name FROM communities
 UNION 
 SELECT 0 AS id, NULL AS name;


SELECT * FROM communities;
INSERT INTO communities (name) VALUES ('test');

-- Урок 11

USE shop;

-- Практическое задание по теме “Оптимизация запросов”
-- 1 Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.
CREATE TABLE logs (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `id_row_on_table` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=Archive AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TRIGGER product_insert AFTER INSERT ON shop.products 
FOR EACH ROW 
BEGIN 	
	INSERT INTO logs (id_row_on_table, table_name, name) VALUES (NEW.id, 'shop.products', NEW.name);
END;

CREATE TRIGGER catalogs_insert AFTER INSERT ON shop.catalogs 
FOR EACH ROW 
BEGIN 	
	INSERT INTO logs (id_row_on_table, table_name, name) VALUES (NEW.id, 'shop.catalogs', NEW.name);
END;

CREATE TRIGGER users_insert AFTER INSERT ON shop.users
FOR EACH ROW 
BEGIN 	
	INSERT INTO logs (id_row_on_table, table_name, name) VALUES (NEW.id, 'shop.users', CONCAT(NEW.first_name, ' ', NEW.last_name));
END;


INSERT INTO products (name, desription, price, catalog_id) VALUES ('test', 'test', 777, 1);
INSERT INTO catalogs (name) VALUES ('test');
INSERT INTO users (first_name, last_name, email, phone) VALUES ('test1', 'test1', 'test1@tast1.ru', '9876543210');

SELECT * FROM products;
SELECT * FROM catalogs;
SELECT * FROM users;

SELECT * FROM logs;



-- 2 (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
CREATE PROCEDURE get_million_users()
BEGIN
	DECLARE i INT DEFAULT 0;
	DECLARE id_temp INT DEFAULT 0;
	SET id_temp = (SELECT MAX(id) FROM shop.users);


	lib: WHILE i < 1000000 DO
		SET id_temp = id_temp + 1;
		INSERT INTO users (first_name, last_name, email, phone) VALUES (id_temp, id_temp, CONCAT(id_temp, '@russian.ru'), id_temp);
		SET i=i+1;
	END WHILE lib;
END;

DELETE FROM users WHERE id > 102;

DROP PROCEDURE get_million_users;

CALL get_million_users();

SELECT COUNT(id) FROM shop.users;


-- Практическое задание по теме “NoSQL”

-- 1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
HMSET visit_ip 127.0.0.1 0 127.0.0.2 0
HSET visit_ip 127.0.0.1 1
HSET visit_ip 127.0.0.3 1

-- 2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.
HMSET name_to_email a a@ru b b@ru
HMSET email_to_name a@ru a b@ru b

HGET name_to_email a
HGET email_to_name a@ru

-- 3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.


