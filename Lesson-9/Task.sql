-- 1.1
START TRANSACTION;
SELECT @name_temp := CONCAT(first_name, ' ', last_name) FROM shop.users WHERE id = 1;
INSERT INTO sample.users (name) VALUES (@name_temp);
DELETE FROM shop.users WHERE id = 4;
-- ROLLBACK;
COMMIT;

-- 1.2
USE shop;
CREATE VIEW cat_name AS SELECT shop.products.name AS prod_name, shop.catalogs.name AS cat_name FROM shop.products 
	JOIN  shop.catalogs 
	ON shop.products.catalog_id = shop.catalogs.id;


SELECT * FROM cat_name;


-- 3.1
SELECT '6:00:00' <= TIME(NOW()) AND TIME(NOW()) < '12:00:00';
SELECT '12:00:00' <= TIME(NOW()) AND TIME(NOW()) < '18:00:00';
SELECT '18:00:00' <= TIME(NOW()) AND TIME(NOW()) < '6:00:00';
SELECT 'Доброе утро!';

CREATE PROCEDURE hello()
BEGIN
	IF('6:00:00' <= TIME(NOW()) AND TIME(NOW()) < '12:00:00') THEN 
		SELECT 'Доброе утро';
	ELSEIF('12:00:00' <= TIME(NOW()) AND TIME(NOW()) < '18:00:00') THEN
		SELECT 'Добрый день';
	ELSE 
		SELECT 'Доброй ночи';
	END IF;	
END;

CALL hello();

-- 3.2
CREATE TRIGGER check_product_insert BEFORE INSERT ON shop.products 
FOR EACH ROW 
BEGIN 
	IF (NEW.name IS NULL AND NEW.desription IS NULL) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'INSERT cancel. Name and description is NULL';		
	END IF;
END;


CREATE TRIGGER check_product_update BEFORE UPDATE ON shop.products 
FOR EACH ROW 
BEGIN 
	IF (NEW.name IS NULL AND NEW.desription IS NULL) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'UPDATE cancel. Name and description is NULL';
	END IF;
END;

SELECT * FROM shop.products;
INSERT INTO shop.products (name, desription) VALUES ('a', 'a');
INSERT INTO shop.products (name, desription) VALUES (NULL, 'a');
INSERT INTO shop.products (name, desription) VALUES ('a', NULL);
INSERT INTO shop.products (name, desription) VALUES (NULL, NULL);

UPDATE shop.products SET name = NULL, desription = NULL WHERE name = 'a' AND desription = 'a';
