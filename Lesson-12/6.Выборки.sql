USE BDAlpthaStar;


SELECT * FROM (SELECT * FROM rating_agent_in_league WHERE rating > 4000) AS tbl1
 	JOIN agents_mapping_league 
 	ON agents_mapping_league.id_agent = tbl1.id_agent
 	WHERE id_strategy_race = 1 
	 	AND 10000 < pos_mapping_X AND pos_mapping_X < 20000 
	 	AND 5000 < pos_mapping_Y AND pos_mapping_Y < 20000;
	 

SELECT * FROM agents_in_league
	LEFT JOIN hyperparametrs_agents 
	ON hyperparametrs_agents.id_agent_in_league = agents_in_league.id
	WHERE alptha > 0.8;


SELECT * FROM agents_mapping_league
	LEFT JOIN agents_in_league
	ON agents_mapping_league.id_agent = agents_in_league.id
	WHERE agents_mapping_league.name IS NULL;


SELECT (SELECT name FROM strategy_race WHERE id = agents_mapping_league.id_strategy_race) AS `name_race`, 
		COUNT(*) AS _count, 
		AVG (DISTINCT hyperparametrs_agents.alptha) AS _avg_alptha, 
		AVG (DISTINCT hyperparametrs_agents.beta) AS _avg_beta, 
		ROUND(AVG (rating_agent_in_league.rating), 0) AS _avg_rating 
	FROM agents_mapping_league
		JOIN hyperparametrs_agents
			ON agents_mapping_league.id_agent = hyperparametrs_agents.id_agent_in_league 
		JOIN rating_agent_in_league 
			ON rating_agent_in_league.id_agent = agents_mapping_league.id_agent 
		GROUP BY agents_mapping_league.id_strategy_race
		ORDER By agents_mapping_league.id_strategy_race;
	

SELECT rating_agent_in_league.id_agent, agents_mapping_league.pos_mapping_X, agents_mapping_league.pos_mapping_Y, rating_agent_in_league.rating, ROUND(rating, -3) AS league FROM agents_mapping_league
	JOIN rating_agent_in_league
		ON rating_agent_in_league.id_agent = agents_mapping_league.id_agent;
	
		
SELECT DISTINCT tbl1.league,
		ROUND(AVG(tbl1.pos_mapping_X) OVER w, 2) AS avg_pos_X,
		ROUND(AVG(tbl1.pos_mapping_Y) OVER w, 2) AS avg_pos_Y,
		MIN(tbl1.rating) OVER w AS min_rating_on_league,
		MAX(tbl1.rating) OVER w AS max_rating_on_league,
		ROUND(AVG(tbl1.rating) OVER w, 0) AS avg_rating_on_league,
		COUNT(tbl1.league) OVER w AS total_on_league,
		COUNT(tbl1.league) OVER() AS total_on_league
	FROM (SELECT rating_agent_in_league.id_agent, agents_mapping_league.pos_mapping_X, agents_mapping_league.pos_mapping_Y, rating_agent_in_league.rating, ROUND(rating, -3) AS league FROM agents_mapping_league
		JOIN rating_agent_in_league 
			ON rating_agent_in_league.id_agent = agents_mapping_league.id_agent) AS tbl1
	WINDOW w AS (PARTITION BY tbl1.league);


SELECT id_agent, `core_nw`, `scaler_encoder_nw`, `entity_encoder_nw`, `spatial_encoder_nw`, 
		`action_type_nw`, `delay_nw`, `queued_nw`, `selected_units_nw`, `target_unit_nw`, `target_point_nw`, 
		`embedding1_nw`, `embedding2_nw`, `embedding3_nw`, `embedding4_nw`, agents_in_league.updated_at, agents_in_league.created_at
	FROM 
	(SELECT * FROM rating_agent_in_league WHERE rating > 8000) AS tbl1
		JOIN agents_in_league 
			ON agents_in_league.id = tbl1.id_agent
 		ORDER BY rating DESC;  

SELECT command.id_type_cmd, COUNT(*) FROM command
	GROUP BY command.id_type_cmd;
	

SELECT DISTINCT tbl1.id, tbl1.cmd,
	COUNT(tbl1.cmd) OVER w AS total_arguments
	FROM (SELECT * FROM command WHERE command.id_type_cmd = 1) AS tbl1
		JOIN arguments_command 
			ON arguments_command.id_command = tbl1.id
		WINDOW w AS (PARTITION  BY tbl1.cmd);
		

SELECT * FROM mimic_agents_in_league
		JOIN agents_in_league 
			ON agents_in_league.id = mimic_agents_in_league.id_agent_in_league
		LEFT JOIN hyperparametrs_agents 
			ON hyperparametrs_agents.id_agent_in_league = mimic_agents_in_league.id_agent_in_league;

SELECT * FROM mimic_agents_in_league
		JOIN agents_mapping_league
			ON agents_mapping_league.id = mimic_agents_in_league.id_agent_in_league
		JOIN rating_agent_in_league 
			ON agents_mapping_league.id = rating_agent_in_league.id_agent;