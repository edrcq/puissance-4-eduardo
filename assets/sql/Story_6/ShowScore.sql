/*Show scores of users*/

SELECT Game.game_name, Users.username, Score.game_difficulty, Score.score
FROM Score
INNER JOIN Game ON Game.id=Score.game_id
INNER JOIN Users ON Score.player_id=Users.id
ORDER BY game_name, game_difficulty, score

/*
On affiche le nom du jeu, le nom du joueur, la difficulté de la partie et le score de la partie.
Pour obtenir le nom du joueur, on lie la table Users et Score, et pour obtenir le nom du jeu, on lie la table Game et Score.
On ordonne les résultats par nom du jeu en ordre alphabétique puis par difficulté de la partie et enfin par score.
*/