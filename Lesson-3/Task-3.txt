CREATE DATABASE vk;

USE vk;

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  email VARCHAR(100) NOT NULL UNIQUE,
  phone VARCHAR(20) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);  

CREATE TABLE profiles (
  user_id INT UNSIGNED NOT NULL PRIMARY KEY,   
  first_name VARCHAR(100) NOT NULL COMMENT "<--- Перенесено для ускорения поиска по в таблице users, тк при входе в пользователя необходимо только найти логин и проверить пароль", 
  last_name VARCHAR(100) NOT NULL COMMENT "<--- Перенесено для ускорения поиска по в таблице users, тк при входе в пользователя необходимо только найти логин и проверить пароль",
  gender CHAR(1) NOT NULL,
  birthday DATE,
  city VARCHAR(130),
  country VARCHAR(130),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
); 

CREATE TABLE messages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  from_user_id INT UNSIGNED NOT NULL,
  to_user_id INT UNSIGNED NOT NULL,
  body TEXT NOT NULL,
  is_important BOOLEAN,
  is_delivered BOOLEAN,
  created_at DATETIME DEFAULT NOW()
);

CREATE TABLE friendship (
  id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "<--- Для using_id нежелательно дублировать отношения между двум сторонами. Вероятней всего необходимо задать friendship id и создать таблицу ссылок на одни и теже отношения. При изменении статуса у всех будут согласованные данные.",
  user_id INT NOT NULL,
  status_id INT UNSIGNED NOT NULL,
  confirmed_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "<--- created_at и requested_at выполняють одну и туже функцию",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE friendship_user (
  user_id INT UNSIGNED NOT NULL COMMENT "<--- Для using_id нежелательно дублировать отношения между двум сторонами. Вероятней всего необходимо задать friendship id и создать таблицу ссылок на одни и теже отношения. При изменении статуса у всех будут согласованные данные. Это даст возможность индексировать только 1 колонкую",
  friendship_id INT UNSIGNED NOT NULL,
  communitie_id INT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "<--- created_at и requested_at выполняють одну и туже функцию",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "<-- Для администрировании поможет",
  PRIMARY KEY (user_id, friendship_id)
);

CREATE TABLE friendship_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  
);

CREATE TABLE communities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  
);

CREATE TABLE communities_users (
  community_id INT UNSIGNED NOT NULL,
  user_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "<-- Для администрировании поможет",
  PRIMARY KEY (community_id, user_id)
);

CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  filename VARCHAR(255) NOT NULL,
  size INT NOT NULL,
  metadata JSON,
  media_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE media_user (
  user_id INT UNSIGNED NOT NULL COMMENT "<--- Явное дублирование черезмерного объема информаци. Необходимо создать таблицу сопоставления user_id --> media_id_to_user_id",
  media_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "<-- Для администрировании поможет",
  PRIMARY KEY (media_id, user_id)
);

CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);