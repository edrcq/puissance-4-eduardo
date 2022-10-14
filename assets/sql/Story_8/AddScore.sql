/*Add Score from player if don't exist else update */

INSERT INTO Score (player_id ,game_id , game_difficulty, score)
VALUES (1,1,50,1000000)
ON DUPLICATE KEY UPDATE Score="10000000"

/*
INSERT INTO permet d'inserer la valeur "The Power Of Memory" dans la case du nom du jeu, la valeur "hard" dans la case difficulté du jeu et la valeur "100" 
dans la case score dans la table Game aux colonnes game_name, score et game_difficulty.*
Dans le cas où les données existent déjà, on va UPDATE ces données.
*/