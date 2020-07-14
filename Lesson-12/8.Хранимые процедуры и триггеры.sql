DROP PROCEDURE random_race;
CREATE PROCEDURE random_race()
BEGIN
	SELECT (1 + ROUND(RAND() * 2, 0)) AS id_race;
END;

CALL random_race();


CREATE TRIGGER check_agent_delete BEFORE DELETE ON agents_in_league
FOR EACH ROW 
BEGIN 
	INSERT INTO archive_agents_in_league (   `core_nw`,   `scaler_encoder_nw`,   `entity_encoder_nw`,   `spatial_encoder_nw`,   `action_type_nw`,   `delay_nw`,   `queued_nw`,   `selected_units_nw`,   `target_unit_nw`,   `target_point_nw`,   `embedding1_nw`,   `embedding2_nw`,   `embedding3_nw`,   `embedding4_nw`,   `baseline_features_nw`,    created_at,     updated_at) 
 								  VALUES (OLD.core_nw, OLD.scaler_encoder_nw, OLD.entity_encoder_nw, OLD.spatial_encoder_nw, OLD.action_type_nw, OLD.delay_nw, OLD.queued_nw, OLD.selected_units_nw, OLD.target_unit_nw, OLD.target_point_nw, OLD.embedding1_nw, OLD.embedding2_nw, OLD.embedding3_nw, OLD.embedding4_nw, OLD.baseline_features_nw, OLD.created_at, OLD.updated_at);
END;


CREATE TRIGGER check_hyperparametrs_delete BEFORE DELETE ON hyperparametrs_agents
FOR EACH ROW 
BEGIN 
	INSERT INTO archiv_hyperparametrs_agents (id_agent_in_league, alptha, beta, bash_size, numbers_layers_nw, learning_rate_decoy, beta_1, beta_2, epsilon, created_at, updated_at) 
   									  VALUES (OLD.id_agent_in_league, OLD.alptha, OLD.beta, OLD.bash_size, OLD.numbers_layers_nw, OLD.learning_rate_decoy, OLD.beta_1, OLD.beta_2, OLD.epsilon, OLD.created_at, OLD.updated_at);
END;


CREATE TRIGGER check_mimic_delete BEFORE DELETE ON mimic_agents_in_league
FOR EACH ROW 
BEGIN 
	INSERT INTO archive_mimic_agents_in_league (id_agent_in_league, is_training, created_at, updated_at) 
   									  VALUES (OLD.id_agent_in_league, OLD.is_training,OLD.created_at, OLD.updated_at);
END;


CREATE TRIGGER check_mapping_delete BEFORE DELETE ON agents_mapping_league
FOR EACH ROW 
BEGIN 
	INSERT INTO archiv_agents_mapping_league (id_agent, pos_mapping_X, pos_mapping_Y, id_strategy_race, success_rate, name, is_view_name, created_at) 
   									  VALUES (OLD.id_agent, OLD.pos_mapping_X, OLD.pos_mapping_Y, OLD.id_strategy_race, OLD.success_rate, OLD.name, OLD.is_view_name, OLD.created_at);
END;


CREATE TRIGGER check_training_delete BEFORE DELETE ON training_agent_league
FOR EACH ROW 
BEGIN 
	INSERT INTO archiv_training_agent_league (reinforcement_learning_nw, reinforcement_learning_hyperparametrs, created_at, updated_at) 
   									  VALUES (OLD.reinforcement_learning_nw, OLD.reinforcement_learning_hyperparametrs, OLD.created_at, OLD.updated_at);
END;

