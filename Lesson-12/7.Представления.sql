USE BDAlpthaStar;


CREATE VIEW all_command_arg AS SELECT arguments_command.id_command, id_type_cmd, cmd, 
		command.discription AS cmd_discription, arguments_command.id AS id_arg, 
		arguments_command.aguments, arguments_command.discription AS arg_discription FROM command 
	JOIN arguments_command 
		ON command.id = arguments_command.id_command
		ORDER BY id_command;
	
SELECT * FROM all_command_arg;
	

CREATE VIEW agents_mapping_hyper AS SELECT id_agent, `core_nw`, `scaler_encoder_nw`, `entity_encoder_nw`, `spatial_encoder_nw`, `action_type_nw`, `delay_nw`, `queued_nw`, `selected_units_nw`, `target_unit_nw`, `target_point_nw`, 
		`embedding1_nw`, `embedding2_nw`, `embedding3_nw`, `embedding4_nw`, agents_in_league.updated_at, agents_in_league.created_at,
		alptha, beta, bash_size, numbers_layers_nw, learning_rate_decoy, beta_1, beta_2, epsilon, name
		FROM agents_in_league
		LEFT JOIN hyperparametrs_agents 
			ON hyperparametrs_agents.id_agent_in_league = agents_in_league.id
		LEFT JOIN agents_mapping_league
			ON agents_mapping_league.id_agent = agents_in_league.id;

SELECT * FROM agents_mapping_hyper;