/*Show scores of users filter by username */

SELECT Game.game_name, Score.player_id, Score.game_difficulty, Score.score, Users.pseudo
FROM Score
INNER JOIN Game ON Game.id=Score.game_id
INNER JOIN Users ON Users.id = Score.player_id
WHERE username="ben youcef"
ORDER BY game_name, game_difficulty, score

/*
On affiche le nom du jeu, le nom du joueur, la difficulté de la partie et le score de la partie.
Pour obtenir le nom du joueur, on lie la table Users et Score, et pour obtenir le nom du jeu, on lie la table Game et Score.
On va filtrer pour n'avoir que un joueur en particulier. Ici "ben youcef".
On ordonne les résultats par nom du jeu en ordre alphabétique puis par difficulté de la partie et enfin par score.
*/

/*Show scores of users filter by username, game name and game difficulty*/


SELECT Game.game_name, Score.player_id, Score.game_difficulty, Score.score, Users.pseudo
FROM Score
INNER JOIN Game ON Game.id=Score.game_id
INNER JOIN Users ON Users.id = Score.player_id
WHERE username="ben youcef", game_name="The Power Of Memory", game_difficulty="10"
ORDER BY game_name, game_difficulty, score

/*
On affiche le nom du jeu, le nom du joueur, la difficulté de la partie et le score de la partie.
Pour obtenir le nom du joueur, on lie la table Users et Score, et pour obtenir le nom du jeu, on lie la table Game et Score.
On va filtrer pour n'avoir que un joueur en particulier, un jeu en particulier et une difficulté en particuliers. Ici "ben youcef","ThE Power Of Memory" et "10".
On ordonne les résultats par nom du jeu en ordre alphabétique puis par difficulté de la partie et enfin par score.
*/