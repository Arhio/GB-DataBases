CREATE TABLE `sum` (
      `id` int unsigned NOT NULL AUTO_INCREMENT,
      `num` int DEFAULT 0,
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO sum (num) VALUE (1);
INSERT INTO sum (num) VALUE (2);
INSERT INTO sum (num) VALUE (3);
INSERT INTO sum (num) VALUE (4);
INSERT INTO sum (num) VALUE (5);


SELECT ROUND(EXP(SUM(LN(num)))) FROM sum;
