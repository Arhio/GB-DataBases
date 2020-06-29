SELECT DAYNAME(STR_TO_DATE(CONCAT(YEAR(NOW()), '-', MONTH(birthday), '-', DAY(birthday)), '%Y-%m-%d')) AS day, COUNT(*) FROM profiles GROUP BY day;
