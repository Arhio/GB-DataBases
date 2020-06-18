CREATE TABLE `storehouses_products` (
      `id` int unsigned NOT NULL AUTO_INCREMENT,
      `num` int DEFAULT 0,
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO storehouses_products (`num`) VALUE (0);
INSERT INTO storehouses_products (`num`) VALUE (2500);
INSERT INTO storehouses_products (`num`) VALUE (0);
INSERT INTO storehouses_products (`num`) VALUE (30);
INSERT INTO storehouses_products (`num`) VALUE (500);
INSERT INTO storehouses_products (`num`) VALUE (1);

SELECT * FROM storehouses_products;

SELECT num AS value FROM (SELECT id, num, IF(num = 0, 1, 0) AS value FROM storehouses_products ORDER BY value, num) AS lesson_5;