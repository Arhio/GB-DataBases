-- ���� 10
USE vk;

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
		
		
SELECT id, name FROM communities
 UNION 
 SELECT 0 AS id, NULL AS name;


SELECT * FROM communities;
INSERT INTO communities (name) VALUES ('test');

-- ���� 11

USE shop;

-- ������������ ������� �� ���� ������������ ��������
-- 1 �������� ������� logs ���� Archive. ����� ��� ������ �������� ������ � �������� users, catalogs � products � ������� logs ���������� ����� � ���� �������� ������, �������� �������, ������������� ���������� ����� � ���������� ���� name.
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



-- 2 (�� �������) �������� SQL-������, ������� �������� � ������� users ������� �������.
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


-- ������������ ������� �� ���� �NoSQL�

-- 1. � ���� ������ Redis ��������� ��������� ��� �������� ��������� � ������������ IP-�������.
HMSET visit_ip 127.0.0.1 0 127.0.0.2 0
HSET visit_ip 127.0.0.1 1
HSET visit_ip 127.0.0.3 1

-- 2. ��� ������ ���� ������ Redis ������ ������ ������ ����� ������������ �� ������������ ������ � ��������, ����� ������������ ������ ������������ �� ��� �����.
HMSET name_to_email a a@ru b b@ru
HMSET email_to_name a@ru a b@ru b

HGET name_to_email a
HGET email_to_name a@ru

-- 3. ����������� �������� ��������� � �������� ������� ������� ���� ������ shop � ���� MongoDB.
db.shop.insert({name: '����������', products: [{name: 'AMD Sempron 2650 BOX', discription: 'AM1, 2 x 1450 ���, L2 - 1 ��, 1�DDR3-1333 ���, Radeon HD 8240, TDP 25 ��, �����', price: '1399', created_at: Date(), update_at: Date() }, {name: 'AMD Athlon X4 840 OEM', discription: 'FM2+, 4 x 3100 ���, L2 - 4 ��, 2�DDR3-2133 ���, TDP 65 ��', price: '1699', created_at: Date(), update_at: Date() }, {name: 'Intel Celeron G4920 OEM', discription: 'LGA 1151-v2, 2 x 3200 ���, L2 - 512 ��, L3 - 2 ��, 2�DDR4-2400 ���, Intel UHD Graphics 610, TDP 54 ��', price: '1899', created_at: Date(), update_at: Date() } ] , created_at: Date() }, {name: '����������', products: [ {name: 'INNO3D GeForce GT 710 Silent LP', discription: 'PCI-E 2.0, 1 �� GDDR3, 64 ���, 954 ���, HDMI, VGA (D-Sub), DVI-D', price: '2799', created_at: Date(), update_at: Date() }, {name: 'MSI GeForce GT 710 Silent LP', discription: 'PCI-E 2.0, 1 �� GDDR3, 64 ���, 954 ���, HDMI, VGA (D-Sub), DVI-D', price: '2799', created_at: Date(), update_at: Date() }, {name: 'GIGABYTE GeForce GT 710', discription: 'PCI-E 2.0, 1 �� GDDR5, 64 ���, 954 ���, HDMI, DVI-I', price: '2850', created_at: Date(), update_at: Date() } ] , created_at: Date() } )
db.shop.find()
