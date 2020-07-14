DROP DATABASE IF EXISTS BDAlpthaStar;

CREATE DATABASE BDAlpthaStar;

USE BDAlpthaStar;

DROP TABLE IF EXISTS agents_in_league; -- 
CREATE TABLE agents_in_league (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `core_nw` json NOT NULL, -- Deep Neuron Network LSTM
  `scaler_encoder_nw` json NOT NULL, -- Neuron Network MLP
  `entity_encoder_nw` json NOT NULL, -- Neuron Network Transformer
  `spatial_encoder_nw` json NOT NULL, -- Neuron Network ResNet
  `action_type_nw` json NOT NULL, -- Neuron Network Residual MLP
  `delay_nw` json NOT NULL, -- Neuron Network MLP
  `queued_nw` json NOT NULL, -- Neuron Network MLP
  `selected_units_nw` json NOT NULL, -- Neuron Network Pointer Network
  `target_unit_nw` json NOT NULL, -- Neuron Network Attention
  `target_point_nw` json NOT NULL, -- Neuron Network Deconv ResNet
  `embedding1_nw` json NOT NULL, -- Neuron Network MLP
  `embedding2_nw` json NOT NULL, -- Neuron Network MLP
  `embedding3_nw` json NOT NULL, -- Neuron Network MLP
  `embedding4_nw` json NOT NULL, -- Neuron Network MLP
  `baseline_features_nw` json NOT NULL, -- Neuron Network Value Network  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS mimic_agents_in_league; -- 
CREATE TABLE mimic_agents_in_league (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_agent_in_league INT UNSIGNED NOT NULL,
  is_training BOOL NOT NULL,  
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS agents_mapping_league; -- 
CREATE TABLE agents_mapping_league (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_agent INT UNSIGNED NOT NULL,
  pos_mapping_X DECIMAL(10,2) NOT NULL,
  pos_mapping_Y DECIMAL(10,2) NOT NULL,
  id_strategy_race INT UNSIGNED NOT NULL, 
  success_rate DECIMAL(10,2) NOT NULL,
  name VARCHAR(255) NOT NULL UNIQUE,
  is_view_name BOOL NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS strategy_race; -- 
CREATE TABLE strategy_race (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS training_agent_league; -- 
CREATE TABLE training_agent_league (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `reinforcement_learning_nw` json NOT NULL,
  `reinforcement_learning_hyperparametrs` json NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS hyperparametrs_agents; -- 
CREATE TABLE hyperparametrs_agents (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_agent_in_league INT UNSIGNED NOT NULL,
  alptha DECIMAL(19, 19) NOT NULL,
  beta DECIMAL(19, 19) NOT NULL,
  bash_size int NOT NULL,
  numbers_layers_nw int NOT NULL,
  learning_rate_decoy DECIMAL(19, 19) NOT NULL,
  beta_1 DECIMAL(19, 19) NOT NULL,
  beta_2 DECIMAL(19, 19) NOT NULL,
  epsilon DECIMAL(19, 19) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS rating_agent_in_league; -- 
CREATE TABLE rating_agent_in_league (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_agent INT UNSIGNED NOT NULL,
  rating DECIMAL(10,2) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS command; -- 
CREATE TABLE command (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_type_cmd INT UNSIGNED NOT NULL,
  cmd VARCHAR(255) NOT NULL,
  discription  VARCHAR(255) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 

DROP TABLE IF EXISTS type_command; -- 
CREATE TABLE type_command (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  type_name VARCHAR(255) NOT NULL,
  discription  VARCHAR(255) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS arguments_command; -- 
CREATE TABLE arguments_command (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_command INT UNSIGNED NOT NULL,
  aguments VARCHAR(255) NOT NULL,
  discription  VARCHAR(255) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Archiv

DROP TABLE IF EXISTS archive_agents_in_league; -- 
CREATE TABLE archive_agents_in_league (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `core_nw` json NOT NULL, -- Deep Neuron Network LSTM
  `scaler_encoder_nw` json NOT NULL, -- Neuron Network MLP
  `entity_encoder_nw` json NOT NULL, -- Neuron Network Transformer
  `spatial_encoder_nw` json NOT NULL, -- Neuron Network ResNet
  `action_type_nw` json NOT NULL, -- Neuron Network Residual MLP
  `delay_nw` json NOT NULL, -- Neuron Network MLP
  `queued_nw` json NOT NULL, -- Neuron Network MLP
  `selected_units_nw` json NOT NULL, -- Neuron Network Pointer Network
  `target_unit_nw` json NOT NULL, -- Neuron Network Attention
  `target_point_nw` json NOT NULL, -- Neuron Network Deconv ResNet
  `embedding1_nw` json NOT NULL, -- Neuron Network MLP
  `embedding2_nw` json NOT NULL, -- Neuron Network MLP
  `embedding3_nw` json NOT NULL, -- Neuron Network MLP
  `embedding4_nw` json NOT NULL, -- Neuron Network MLP
  `baseline_features_nw` json NOT NULL, -- Neuron Network Value Network  
  arhived_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  created_at DATETIME,
  updated_at DATETIME
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS archiv_agents_mapping_league; -- 
CREATE TABLE archiv_agents_mapping_league (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_agent INT UNSIGNED NOT NULL,
  pos_mapping_X DECIMAL(10,2) NOT NULL,
  pos_mapping_Y DECIMAL(10,2) NOT NULL,
  id_strategy_race INT UNSIGNED NOT NULL, 
  success_rate DECIMAL(10,2) NOT NULL,
  name VARCHAR(255) NOT NULL,
  is_view_name BOOL NOT NULL,
  arhived_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  created_at DATETIME
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS archive_mimic_agents_in_league; -- 
CREATE TABLE archive_mimic_agents_in_league (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_agent_in_league INT UNSIGNED NOT NULL,
  is_training BOOL NOT NULL,  
  arhived_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  created_at DATETIME,
  updated_at DATETIME
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8;
 

DROP TABLE IF EXISTS archiv_hyperparametrs_agents; -- 
CREATE TABLE archiv_hyperparametrs_agents (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_agent_in_league INT UNSIGNED NOT NULL,
  alptha DECIMAL(19, 19) NOT NULL,
  beta DECIMAL(19, 19) NOT NULL,
  bash_size int NOT NULL,
  numbers_layers_nw int NOT NULL,
  learning_rate_decoy DECIMAL(19, 19) NOT NULL,
  beta_1 DECIMAL(19, 19) NOT NULL,
  beta_2 DECIMAL(19, 19) NOT NULL,
  epsilon DECIMAL(19, 19) NOT NULL,
  arhived_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  created_at DATETIME,
  updated_at DATETIME
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS archiv_training_agent_league;
CREATE TABLE archiv_training_agent_league (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `reinforcement_learning_nw` json NOT NULL,
  `reinforcement_learning_hyperparametrs` json NOT NULL,
  arhived_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  created_at DATETIME,
  updated_at DATETIME
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8;


-- FOREIGN KEY

ALTER TABLE mimic_agents_in_league
  ADD CONSTRAINT `mimic_agents_in_league_agent_id_fk` FOREIGN KEY (`id_agent_in_league`) REFERENCES `agents_in_league` (`id`);
 
ALTER TABLE hyperparametrs_agents
  ADD CONSTRAINT `hyperparametrs_agents_agent_id_fk` FOREIGN KEY (`id_agent_in_league`) REFERENCES `agents_in_league` (`id`);
 
ALTER TABLE rating_agent_in_league
  ADD CONSTRAINT `rating_agent_in_league_agent_id_fk` FOREIGN KEY (`id_agent`) REFERENCES `agents_in_league` (`id`);
 
ALTER TABLE command
  ADD CONSTRAINT `command_type_cmd_id_fk` FOREIGN KEY (`id_type_cmd`) REFERENCES `type_command` (`id`);
 
ALTER TABLE arguments_command
  ADD CONSTRAINT `arguments_command_command_id_fk` FOREIGN KEY (`id_command`) REFERENCES `command` (`id`);

ALTER TABLE agents_mapping_league
  ADD CONSTRAINT `agents_mapping_league_agent_id_fk` FOREIGN KEY (`id_agent`) REFERENCES `agents_in_league` (`id`),
  ADD CONSTRAINT `agents_mapping_league_strategy_race_id_fk` FOREIGN KEY (`id_strategy_race`) REFERENCES `strategy_race` (`id`);
  
 
 -- INDEX

CREATE INDEX command_type_id_idx ON command(id_type_cmd);
CREATE INDEX arguments_command_id_idx ON arguments_command (id_command);
CREATE INDEX agents_mapping_id_idx ON agents_mapping_league (id_agent);
CREATE INDEX hyperparametrs_agents_id_idx ON hyperparametrs_agents (id_agent_in_league);
CREATE INDEX mimic_agents_id_idx ON mimic_agents_in_league (id_agent_in_league);
CREATE INDEX rating_agents_id_idx ON rating_agent_in_league (id_agent);
