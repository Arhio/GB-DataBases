CREATE DATABASE shop; 

USE shop;


-- Задача 1

CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci

DROP TABLE orders;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci



INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (1, 93, '1977-02-14 05:13:25', '1995-06-24 17:52:02');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (2, 25, '1976-03-23 01:39:17', '2007-01-09 16:22:09');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (3, 12, '1991-04-05 09:34:41', '2012-11-15 09:00:20');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (4, 85, '1995-08-05 23:30:44', '2002-10-18 14:10:23');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (5, 33, '1997-10-25 15:13:19', '1984-08-24 02:15:15');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (6, 24, '2004-07-20 01:30:39', '1985-11-16 14:48:58');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (7, 31, '2016-09-16 20:47:16', '2005-08-06 02:23:53');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (8, 17, '1986-05-19 00:54:10', '1987-11-12 12:26:34');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (9, 93, '1999-04-26 22:06:29', '1987-09-21 14:55:50');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (10, 29, '1999-04-11 09:32:03', '1995-12-27 14:55:23');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (11, 53, '2017-08-01 18:31:32', '1975-01-19 05:19:04');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (12, 99, '2011-11-19 12:31:12', '1986-04-28 14:21:59');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (13, 94, '2005-06-23 23:52:25', '1973-01-27 17:29:47');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (14, 78, '1995-11-26 02:09:14', '1973-05-10 19:47:57');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (15, 18, '2014-01-23 21:30:06', '1998-09-18 09:41:35');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (16, 18, '2017-11-19 22:53:52', '1981-03-08 20:31:22');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (17, 13, '1976-03-17 23:29:47', '2014-09-21 15:21:28');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (18, 74, '1997-06-13 01:10:06', '2003-09-16 16:24:54');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (19, 67, '2018-11-29 18:44:55', '1995-04-04 03:56:49');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (20, 47, '1980-01-07 15:31:17', '2018-10-19 23:12:01');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (21, 24, '1989-05-09 21:05:22', '1980-08-07 14:56:28');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (22, 40, '1971-10-13 16:56:11', '1987-08-07 22:28:39');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (23, 11, '1974-08-05 18:37:25', '1987-01-23 15:05:51');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (24, 88, '2006-05-20 11:51:36', '1989-02-19 14:45:11');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (25, 1, '1991-02-27 12:08:39', '2018-01-12 11:23:59');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (26, 18, '1984-12-31 17:13:55', '1982-09-15 15:06:43');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (27, 11, '1995-06-11 20:47:04', '1979-05-25 00:15:17');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (28, 21, '1976-09-19 00:56:05', '1998-02-16 12:12:07');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (29, 71, '1974-10-01 23:31:17', '1999-03-24 23:20:07');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (30, 16, '2010-04-16 05:13:33', '2009-10-29 19:07:06');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (31, 42, '1970-03-31 08:21:01', '1970-09-22 01:21:53');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (32, 23, '2004-09-27 15:50:10', '1976-07-03 18:46:13');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (33, 52, '1994-05-27 12:43:32', '2016-09-08 04:25:41');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (34, 17, '2003-11-13 06:55:22', '2017-11-28 06:27:36');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (35, 19, '1975-06-10 14:22:52', '2006-09-13 23:17:30');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (36, 14, '2011-08-17 07:07:01', '1988-01-31 13:45:25');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (37, 47, '1999-11-09 21:42:03', '1981-11-25 20:47:23');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (38, 92, '1995-06-26 04:50:24', '1982-06-01 02:25:25');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (39, 59, '1982-03-01 11:42:57', '1979-02-26 07:33:28');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (40, 85, '2019-11-24 01:48:35', '1970-02-01 13:32:28');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (41, 99, '1992-12-29 15:19:12', '1970-05-15 16:23:15');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (42, 87, '2005-09-11 12:31:17', '1972-07-10 09:55:19');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (43, 83, '2012-07-11 01:07:48', '2016-12-07 08:51:42');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (44, 67, '1981-01-08 19:41:46', '1984-01-12 09:33:24');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (45, 9, '2010-12-10 05:55:59', '1980-07-17 11:03:26');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (46, 94, '2005-12-15 21:35:57', '1998-03-30 10:04:33');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (47, 80, '2011-09-14 07:23:22', '1990-12-02 04:27:40');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (48, 36, '1997-04-08 09:36:08', '2008-01-25 08:04:24');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (49, 79, '1998-07-27 14:06:19', '1975-11-01 21:43:34');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (50, 26, '1994-10-21 20:33:39', '1993-05-19 02:58:58');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (51, 40, '2001-05-14 11:12:37', '2014-08-20 03:58:40');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (52, 14, '1973-11-01 10:30:15', '1974-05-17 10:49:49');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (53, 5, '1970-07-21 21:32:30', '2001-11-10 15:45:20');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (54, 28, '2009-09-21 22:46:05', '2014-08-28 12:37:51');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (55, 6, '2009-05-27 04:44:42', '2016-04-10 12:25:41');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (56, 66, '1983-08-01 08:48:44', '1977-07-21 16:10:16');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (57, 29, '1971-11-07 01:46:33', '2005-03-17 16:39:16');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (58, 19, '2009-12-22 02:31:45', '2017-12-16 22:06:44');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (59, 38, '1974-11-07 23:13:27', '2013-06-30 03:10:45');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (60, 60, '1975-08-30 02:26:39', '1978-11-13 20:31:07');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (61, 20, '2002-02-27 16:13:42', '1970-01-15 14:05:56');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (62, 59, '2018-08-22 08:11:05', '1985-05-10 23:37:10');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (63, 42, '2003-05-03 13:06:42', '1994-01-24 13:53:35');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (64, 64, '1999-04-06 21:12:39', '1973-01-07 13:14:42');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (65, 19, '1989-01-19 16:27:18', '2010-01-07 07:19:07');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (66, 70, '1970-07-02 08:43:47', '2007-03-30 23:40:52');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (67, 21, '1986-03-27 15:52:37', '2014-06-19 16:36:23');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (68, 19, '2012-03-29 00:22:50', '1980-09-27 21:05:55');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (69, 50, '2017-03-30 03:59:56', '2008-03-15 20:38:22');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (70, 75, '1973-04-25 15:22:25', '1971-03-31 08:21:31');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (71, 30, '1985-08-10 18:06:26', '2002-02-07 21:38:26');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (72, 73, '1987-10-22 19:57:28', '2002-08-04 08:32:53');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (73, 83, '1975-12-18 00:24:24', '2002-01-22 04:18:03');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (74, 95, '2004-09-16 04:23:43', '1984-07-06 08:46:27');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (75, 34, '1993-03-14 09:26:08', '2002-10-04 22:41:31');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (76, 15, '1991-10-14 23:17:23', '1993-05-10 12:31:05');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (77, 2, '2000-02-05 17:38:47', '1991-10-10 02:47:35');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (78, 15, '1977-01-10 20:02:18', '1998-07-12 16:46:40');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (79, 74, '2006-12-01 01:23:04', '2003-10-14 14:37:15');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (80, 43, '1971-02-01 02:42:43', '2001-10-02 04:21:13');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (81, 30, '1974-12-03 03:38:52', '1981-03-10 04:50:35');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (82, 10, '1986-04-17 14:44:42', '1985-03-02 22:30:15');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (83, 58, '1981-02-15 13:31:40', '2008-12-30 04:28:39');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (84, 42, '2005-01-08 02:39:49', '2012-05-31 13:58:05');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (85, 96, '1997-08-12 08:12:47', '2003-06-16 13:46:29');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (86, 71, '2013-08-15 07:47:36', '1993-06-03 02:50:35');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (87, 4, '1996-07-12 23:39:34', '1995-08-04 06:25:20');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (88, 94, '1974-10-24 14:31:53', '2012-07-05 05:35:59');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (89, 55, '1990-04-12 00:03:04', '2011-06-29 13:11:47');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (90, 26, '2007-06-26 01:23:11', '1975-04-02 14:42:37');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (91, 33, '1973-05-09 20:29:56', '1979-11-10 08:40:43');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (92, 49, '2000-01-15 22:47:20', '1984-01-26 01:34:50');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (93, 71, '1994-06-21 08:12:21', '2006-04-27 01:43:48');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (94, 71, '1993-12-20 03:25:47', '2010-10-07 04:07:13');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (95, 25, '1994-01-27 04:51:48', '1983-01-04 10:53:58');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (96, 29, '1987-11-21 17:38:55', '2006-09-05 17:47:27');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (97, 72, '1974-01-14 14:39:30', '1999-04-04 17:54:40');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (98, 100, '1985-07-12 16:41:19', '1974-07-08 18:13:37');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (99, 45, '1970-12-27 17:44:27', '1997-08-07 03:24:21');
INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES (100, 10, '1986-04-02 09:56:12', '1978-02-13 11:58:39');


INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Chasity', 'Purdy', 'eichmann.vickie@example.com', '06719869978', '1988-08-31 00:57:59', '2014-05-16 19:04:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Dalton', 'Kuhn', 'stevie15@example.net', '(193)570-4929x6247', '1974-01-21 22:32:31', '2014-02-19 22:17:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Estell', 'Ziemann', 'jast.dorian@example.net', '263-560-0254', '1979-11-27 14:29:42', '2011-02-17 01:22:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Mariana', 'Daniel', 'angelina.kuhn@example.net', '1-618-599-7856', '1975-03-16 22:48:56', '1997-01-06 19:24:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Jeromy', 'Herman', 'vmarvin@example.net', '018.155.7535x172', '1997-05-05 21:20:07', '2018-08-01 11:19:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Hyman', 'Heaney', 'jamal.volkman@example.net', '(505)135-1623', '2015-10-07 11:57:11', '2014-03-01 09:07:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Asia', 'Mohr', 'mjast@example.org', '069.193.5247', '1995-01-19 23:39:49', '2000-06-29 14:42:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Lessie', 'Fritsch', 'carmine.von@example.net', '151-731-8048x41442', '2015-06-08 20:16:55', '1984-05-11 07:41:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Rico', 'Heidenreich', 'odach@example.org', '181.024.5556', '1999-07-05 21:37:40', '2006-06-20 20:13:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Zoie', 'Schultz', 'bahringer.hoyt@example.net', '1-555-831-3609x83660', '2020-01-06 02:22:09', '2010-01-06 20:36:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Luz', 'Mueller', 'jakubowski.garnet@example.com', '(667)338-9547x0032', '2017-03-10 15:46:13', '2001-05-28 08:25:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Misty', 'Eichmann', 'oeffertz@example.com', '(051)478-7249', '2008-04-30 16:57:54', '1999-04-24 14:06:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Nels', 'Cormier', 'mborer@example.net', '747-467-2991', '2016-07-24 16:25:20', '1981-12-08 21:27:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Pierre', 'Bins', 'nmedhurst@example.com', '414.525.8326x28066', '2014-12-21 17:09:34', '1978-10-22 01:06:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Enos', 'Trantow', 'melyna43@example.org', '853.161.2788x74312', '2002-12-27 13:12:35', '2000-04-07 22:04:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Katherine', 'Kerluke', 'thurman54@example.com', '(893)340-8761x77573', '2018-12-14 10:49:10', '1974-09-12 13:43:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Camila', 'Jerde', 'wilkinson.jerod@example.net', '765.239.8762', '1976-03-29 18:11:15', '2002-03-11 05:13:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Terrill', 'Veum', 'keefe.jarred@example.net', '698.077.7501', '2002-01-10 22:01:21', '1979-12-03 08:43:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Nolan', 'Purdy', 'patricia59@example.com', '(200)897-6951x67728', '2008-08-15 17:10:12', '2001-12-05 16:44:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Pete', 'Welch', 'kautzer.mossie@example.org', '222-563-9466x5160', '1996-03-30 05:38:06', '2002-10-02 23:04:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Oceane', 'McLaughlin', 'oblock@example.net', '216-006-7118x22980', '1986-04-24 09:00:10', '2020-01-03 23:46:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Casper', 'Hahn', 'rachelle82@example.net', '09782229357', '1987-01-26 16:43:27', '1985-10-14 03:40:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Ila', 'Thompson', 'schowalter.brooke@example.net', '491-709-1224x08115', '1975-06-07 19:52:21', '1976-03-26 12:19:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Mathilde', 'Auer', 'catharine40@example.org', '356-471-4931x9569', '2012-05-13 12:02:10', '1996-06-21 16:09:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Chelsea', 'Funk', 'jermey06@example.net', '(029)772-9095x6995', '2006-02-01 04:25:16', '1979-12-18 12:42:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Mathew', 'Torp', 'patience.bradtke@example.com', '1-215-738-8537', '1980-08-22 04:31:44', '2009-04-22 13:55:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Torey', 'Dooley', 'carroll.bennett@example.com', '493-011-7101', '1973-10-16 18:24:54', '1973-07-30 12:14:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Karen', 'Keebler', 'karina.klein@example.net', '+25(6)1374574907', '2014-05-24 07:49:55', '1999-02-09 21:27:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Jacey', 'Simonis', 'ykohler@example.net', '1-797-663-8232', '2008-03-26 19:03:07', '1979-12-15 02:30:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Angelica', 'King', 'harley38@example.org', '658.819.6024x7623', '1979-08-07 22:24:54', '2016-11-18 07:54:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Benjamin', 'Robel', 'johnson.elyssa@example.org', '+11(4)8281706758', '1985-03-06 00:32:48', '1991-12-28 21:20:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Doyle', 'Paucek', 'beahan.preston@example.com', '242.929.8307', '1982-03-31 21:24:24', '1981-06-21 06:22:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Dylan', 'Hayes', 'kkiehn@example.org', '(308)197-3311x6112', '2016-11-15 09:19:35', '1994-02-09 03:37:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Kareem', 'Howell', 'muller.merritt@example.net', '1-792-096-7750x702', '2004-07-15 22:23:31', '2008-04-16 22:28:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Schuyler', 'Heller', 'stamm.henderson@example.net', '(812)266-7217x3675', '2014-04-04 07:03:11', '1970-02-09 01:19:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Noemie', 'Pagac', 'pfeffer.maeve@example.net', '964.680.7521', '1987-01-23 09:27:23', '2020-02-14 19:11:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Oswaldo', 'Witting', 'thammes@example.org', '1-906-589-1120', '1976-05-05 11:08:28', '1976-02-28 09:22:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Bettye', 'Crooks', 'grant.gunner@example.com', '000-081-8629', '1995-03-02 03:36:51', '2011-01-13 04:57:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Zoey', 'VonRueden', 'xnolan@example.com', '277-839-2784', '2015-01-18 21:49:32', '2015-01-15 06:59:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Raul', 'Sipes', 'maribel.bruen@example.com', '(165)126-4243', '1978-01-19 11:39:02', '2006-01-06 12:14:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Adan', 'Kessler', 'katrine05@example.org', '07519069843', '1997-08-12 15:47:05', '2006-11-06 04:42:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Laverne', 'Heaney', 'kyler44@example.net', '073.796.1960x7320', '2014-11-25 04:13:00', '2014-01-05 05:22:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Theresa', 'Runte', 'guido.rice@example.org', '351-115-2751', '1994-12-10 01:06:03', '1988-04-06 01:13:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Christy', 'Beier', 'fahey.marco@example.org', '+60(5)0689233793', '1974-03-19 14:50:59', '2008-06-24 04:53:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Joanie', 'Cassin', 'zkautzer@example.com', '(991)360-7098x952', '2003-08-17 08:33:11', '1991-12-24 19:03:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Moises', 'Reichert', 'yzemlak@example.com', '(130)459-6578x1123', '1992-06-12 18:47:27', '1983-12-20 02:44:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Destinee', 'Heathcote', 'jan54@example.net', '386.543.1459', '1990-02-11 10:28:08', '2006-06-04 02:25:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Allene', 'Brown', 'klein.alta@example.com', '1-084-764-3203x02056', '1981-08-17 16:37:30', '2001-10-25 13:07:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Garnett', 'Breitenberg', 'einar.schulist@example.com', '(232)376-9174', '1980-06-15 23:06:49', '2015-07-19 21:29:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Madelyn', 'Collins', 'bruen.cordie@example.org', '769-298-2346', '1982-03-13 00:50:58', '1999-09-19 11:27:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Emmanuel', 'Powlowski', 'sarina.stokes@example.net', '+80(4)1004095708', '2008-05-19 04:22:25', '2004-04-18 02:41:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Adan', 'Walsh', 'smann@example.net', '05018449506', '1985-08-26 22:00:04', '1989-11-08 13:58:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Merlin', 'Jones', 'lesch.brooke@example.net', '(481)775-7570x05896', '2020-04-19 18:32:26', '2007-07-22 11:49:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Kattie', 'Reilly', 'celia.hoeger@example.net', '662.064.8779', '1986-10-21 02:40:17', '2003-11-26 11:33:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Vernice', 'Thiel', 'joanny.rice@example.com', '258.288.9771', '2013-08-22 13:13:56', '1998-09-22 01:29:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Kip', 'Gleichner', 'jacynthe25@example.org', '373-606-1436x8705', '1984-07-10 22:51:36', '1986-09-23 05:27:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Nicola', 'Tromp', 'aturcotte@example.com', '573.368.4876x93514', '1982-10-14 14:34:23', '2005-07-04 04:38:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Nedra', 'Jones', 'wisozk.bertrand@example.com', '(872)421-3132x61102', '1989-05-18 22:20:15', '2005-03-31 03:08:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Lavada', 'Carroll', 'eric71@example.net', '(790)351-4405', '1989-05-18 09:03:44', '1992-07-16 19:29:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Cathryn', 'Stoltenberg', 'kihn.mabel@example.com', '08482231988', '2003-05-02 10:07:03', '1991-08-24 16:36:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Bernadine', 'Kovacek', 'connell.king@example.com', '05637800473', '1998-11-03 05:27:00', '1988-03-11 03:32:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Bethany', 'Gusikowski', 'conroy.stanley@example.com', '1-583-188-1316x838', '2013-05-27 02:59:20', '2008-12-24 10:14:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Urban', 'Schumm', 'kaya71@example.com', '026-971-6012x09976', '1988-08-31 04:46:14', '1990-06-21 02:25:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Sandra', 'Connelly', 'romaguera.harvey@example.net', '380-870-3689x0121', '2002-09-20 04:46:56', '1996-03-17 14:50:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Tad', 'Reichel', 'luettgen.riley@example.net', '1-311-075-4354', '2011-05-06 05:30:19', '1998-10-15 05:16:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Gordon', 'Green', 'nmurray@example.org', '940-348-1870x705', '2005-02-12 06:17:14', '2013-01-24 05:32:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Bessie', 'Buckridge', 'treutel.karina@example.org', '(972)510-3118', '1972-12-08 06:22:46', '1994-09-27 20:45:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Daphne', 'Connell', 'ybayer@example.org', '(334)973-0963', '1975-11-05 10:58:55', '1987-12-15 12:16:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Dillon', 'Senger', 'fbrown@example.com', '+25(9)2075761020', '2011-05-21 09:27:04', '2011-01-13 06:31:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Elenor', 'Kerluke', 'madelynn26@example.net', '830.344.0691x441', '1989-02-22 17:45:33', '1995-10-17 00:16:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Fredrick', 'Frami', 'dthompson@example.org', '074.989.3196x250', '2013-05-23 12:17:29', '1980-08-06 21:36:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Amber', 'Abernathy', 'katlynn.grady@example.org', '+34(8)7098562820', '1985-05-25 20:52:22', '1972-09-27 18:50:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Herta', 'Miller', 'audreanne.wiegand@example.com', '1-311-894-7020', '1971-12-15 20:05:55', '1990-11-03 20:17:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Bernadine', 'Hegmann', 'yluettgen@example.org', '08812889432', '1984-11-15 11:02:58', '1996-08-29 23:50:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Gunnar', 'Parker', 'jarret conner@example.com', '1-643-795-1696x7236', '1996-10-09 07:44:50', '2009-04-26 09:28:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Wilford', 'Denesik', 'emard.martin@example.net', '00231581985', '1992-06-30 05:01:05', '2010-01-31 16:11:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Verlie', 'Langosh', 'uvon@example.net', '+19(0)3446753010', '2001-05-10 08:15:21', '2014-04-28 17:29:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Cicero', 'Greenholt', 'erdman.bridgette@example.com', '931-271-0279x510', '1979-08-22 14:16:32', '1976-02-05 20:40:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Jovani', 'Bradtke', 'fgleichner@example.org', '+34(9)9421952132', '1984-06-12 05:39:03', '1981-09-23 09:59:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Romaine', 'Walsh', 'qcrona@example.com', '(412)495-0598x1616', '2019-09-02 06:14:45', '2008-08-23 20:28:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Earlene', 'Schulist', 'chandler83@example.com', '+45(5)4732538958', '2007-04-30 14:30:38', '1973-05-13 19:46:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Cleo', 'Towne', 'stewart.kling@example.net', '(655)574-9723x4721', '1983-11-08 18:01:56', '2001-12-26 14:16:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Alexander', 'Roberts', 'krystel10@example.com', '1-251-879-5576', '2012-01-14 14:53:40', '2003-08-24 22:31:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Millie', 'Howell', 'marquardt.green@example.org', '086.066.4423', '2000-02-02 10:06:14', '1977-12-06 16:17:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Michel', 'Fisher', 'larson.georgette@example.net', '547-781-1801', '2008-11-07 21:02:54', '1987-08-12 02:57:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Yvonne', 'Erdman', 'bertram07@example.org', '1-407-982-3117', '1990-01-31 07:32:32', '1995-06-09 18:19:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Alvena', 'Deckow', 'thickle@example.org', '382.207.5884', '2017-04-25 20:17:00', '1978-03-30 07:20:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Hassie', 'Bechtelar', 'aron30@example.com', '087-375-7543x9068', '1981-08-28 02:38:43', '2018-04-03 22:31:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Ryley', 'Schimmel', 'iparisian@example.com', '+16(2)4496979648', '2015-03-09 12:14:04', '2002-09-22 08:38:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Roxane', 'Muller', 'spadberg@example.com', '286-096-0864x9850', '1987-01-27 04:39:22', '1997-10-28 11:03:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Pearl', 'Schmidt', 'brooklyn.bergnaum@example.org', '08423430536', '2000-01-31 23:13:53', '1995-12-23 14:35:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Luciano', 'Sauer', 'schaden.esperanza@example.net', '912.668.9339x6405', '1999-01-21 10:11:06', '2019-12-11 16:09:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Myrtie', 'Blanda', 'gregorio13@example.com', '050-984-7372', '1977-09-09 11:26:39', '2000-09-14 19:34:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Junior', 'Kovacek', 'schaden.emanuel@example.net', '973-245-2464x67373', '1977-01-05 02:05:03', '1972-06-17 17:13:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Germaine', 'Bernhard', 'mpfannerstill@example.net', '(244)561-9047x7405', '1976-05-15 02:20:35', '2009-11-21 19:36:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Lauren', 'Crist', 'ijones@example.org', '926.072.0475x49328', '1985-02-04 06:01:23', '2002-11-05 05:12:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Mona', 'Kris', 'utromp@example.org', '1-149-625-4910x055', '1990-06-10 11:20:32', '1997-10-13 17:02:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Sydnie', 'VonRueden', 'ricardo99@example.net', '468-231-1842', '1985-07-06 13:46:05', '1992-03-16 07:42:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Edwin', 'Wunsch', 'ashtyn.reichert@example.net', '1-079-750-2428x2089', '1989-08-07 04:32:20', '1982-10-15 17:59:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Kaleigh', 'Moore', 'jerrell58@example.net', '1-273-327-7691x73068', '1991-03-01 02:39:27', '2003-12-10 03:24:08');

SELECT * FROM users WHERE id IN (SELECT DISTINCT user_id FROM orders) ORDER BY id;




-- Задача 2

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'РќР°Р·РІР°РЅРёРµ',
  desription TEXT COMMENT 'РћРїРёСЃР°РЅРёРµ',
  price DECIMAL (11,2) COMMENT 'Р¦РµРЅР°',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'РўРѕРІР°СЂРЅС‹Рµ РїРѕР·РёС†РёРё';

INSERT INTO products
  (name, desription, price, catalog_id)
VALUES
  ('Intel Core i3-8100', 'РџСЂРѕС†РµСЃСЃРѕСЂ РґР»СЏ РЅР°СЃС‚РѕР»СЊРЅС‹С… РїРµСЂСЃРѕРЅР°Р»СЊРЅС‹С… РєРѕРјРїСЊСЋС‚РµСЂРѕРІ, РѕСЃРЅРѕРІР°РЅРЅС‹С… РЅР° РїР»Р°С‚С„РѕСЂРјРµ Intel.', 7890.00, 1),
  ('Intel Core i5-7400', 'РџСЂРѕС†РµСЃСЃРѕСЂ РґР»СЏ РЅР°СЃС‚РѕР»СЊРЅС‹С… РїРµСЂСЃРѕРЅР°Р»СЊРЅС‹С… РєРѕРјРїСЊСЋС‚РµСЂРѕРІ, РѕСЃРЅРѕРІР°РЅРЅС‹С… РЅР° РїР»Р°С‚С„РѕСЂРјРµ Intel.', 12700.00, 1),
  ('AMD FX-8320E', 'РџСЂРѕС†РµСЃСЃРѕСЂ РґР»СЏ РЅР°СЃС‚РѕР»СЊРЅС‹С… РїРµСЂСЃРѕРЅР°Р»СЊРЅС‹С… РєРѕРјРїСЊСЋС‚РµСЂРѕРІ, РѕСЃРЅРѕРІР°РЅРЅС‹С… РЅР° РїР»Р°С‚С„РѕСЂРјРµ AMD.', 4780.00, 1),
  ('AMD FX-8320', 'РџСЂРѕС†РµСЃСЃРѕСЂ РґР»СЏ РЅР°СЃС‚РѕР»СЊРЅС‹С… РїРµСЂСЃРѕРЅР°Р»СЊРЅС‹С… РєРѕРјРїСЊСЋС‚РµСЂРѕРІ, РѕСЃРЅРѕРІР°РЅРЅС‹С… РЅР° РїР»Р°С‚С„РѕСЂРјРµ AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'РњР°С‚РµСЂРёРЅСЃРєР°СЏ РїР»Р°С‚Р° ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'РњР°С‚РµСЂРёРЅСЃРєР°СЏ РїР»Р°С‚Р° Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'РњР°С‚РµСЂРёРЅСЃРєР°СЏ РїР»Р°С‚Р° MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);
 
 DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'РќР°Р·РІР°РЅРёРµ СЂР°Р·РґРµР»Р°',
  UNIQUE unique_name(name(10))
) COMMENT = 'Р Р°Р·РґРµР»С‹ РёРЅС‚РµСЂРЅРµС‚-РјР°РіР°Р·РёРЅР°';

INSERT INTO catalogs VALUES
  (NULL, 'РџСЂРѕС†РµСЃСЃРѕСЂС‹'),
  (NULL, 'РњР°С‚РµСЂРёРЅСЃРєРёРµ РїР»Р°С‚С‹'),
  (NULL, 'Р’РёРґРµРѕРєР°СЂС‚С‹'),
  (NULL, 'Р–РµСЃС‚РєРёРµ РґРёСЃРєРё'),
  (NULL, 'РћРїРµСЂР°С‚РёРІРЅР°СЏ РїР°РјСЏС‚СЊ');

 
 SELECT catalogs.name AS catalogs, products.name, products.price , 
		products.desription, products.created_at, products.updated_at 
	FROM catalogs 
		JOIN products 
		ON catalogs.id = products.catalog_id;
	




-- Задача 3

DROP TABLE flights;
CREATE TABLE `flights` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE cities;
CREATE TABLE `cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `flights` (`from`, `to`) VALUES ('moscow', 'omsk');
INSERT INTO `flights` (`from`, `to`) VALUES ('novgorod', 'kazan');
INSERT INTO `flights` (`from`, `to`) VALUES ('irkutsk', 'moscow');
INSERT INTO `flights` (`from`, `to`) VALUES ('omsk', 'irkutsk');
INSERT INTO `flights` (`from`, `to`) VALUES ('moscow', 'kazan');


INSERT INTO `cities` (`label`, `name`) VALUES ('moscow', 'Москва');
INSERT INTO `cities` (`label`, `name`) VALUES ('irkutsk', 'Иркутск');
INSERT INTO `cities` (`label`, `name`) VALUES ('novgorod', 'Новгород');
INSERT INTO `cities` (`label`, `name`) VALUES ('kazan', 'Казань');
INSERT INTO `cities` (`label`, `name`) VALUES ('omsk', 'Омск');

SELECT id, (SELECT name FROM cities WHERE label = flights.`from`) AS `from`, (SELECT name FROM cities WHERE label = flights.`to`) AS `to` FROM flights;