/* Création des quatres tables Users, Scores, Games, Messages */

CREATE TABLE Users(

    id_player int unsigned NOT NULL AUTO_INCREMENT,
    mail VARCHAR (40),
    created_at timestamp NOT NULL DEFAULT current_timestamp(),
    mdp VARCHAR(40),
    username VARCHAR(40),
    last_connexion timestamp NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY(id_player)

    );


    CREATE TABLE Scores(

    id_score int
    unsigned NOT NULL AUTO_INCREMENT,
    id_player int unsigned,
    id_game int unsigned NOT NULL,
    difficulty VARCHAR(40),
    score_game int unsigned,
    Time_game timestamp NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY(id_score),
    CONSTRAINT FK_UsersScores FOREIGN KEY(id_player)
    REFERENCES Users(id_player),
    CONSTRAINT FK_GamesScores FOREIGN KEY(id_game)
    REFERENCES Games(id_game)

    );

    CREATE TABLE Games(

    id_game int unsigned NOT NULL AUTO_INCREMENT,
    game_name VARCHAR(40),
    PRIMARY KEY(id_game)

    );

    CREATE TABLE Messages(

    id_message int unsigned NOT NULL AUTO_INCREMENT,
    id_game int unsigned NOT NULL,
    id_player int unsigned,
    message TEXT(50),
    time_message timestamp NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY(id_message),
    CONSTRAINT FK_GameMessage FOREIGN KEY(id_game)
    REFERENCES Games(id_game),
    CONSTRAINT FK_UserMessage FOREIGN KEY(id_player)
    REFERENCES Users(id_player)

     );

     /* Ajout de fausse données pour des test dans la table Users */

    INSERT INTO Users(id_player,mail,created_at,mdp,username,last_connexion) VALUES( 1 , 'monmail@gmail.com', Now(), 'benyouyou', 'benyoucef', Now());
    INSERT INTO Users(id_player,mail,created_at,mdp,username,last_connexion) VALUES( 2 , 'onmail@gmail.com', Now(), 'benyouyou', 'Noé', Now());
    INSERT INTO Users(id_player,mail,created_at,mdp,username,last_connexion) VALUES( 3 , 'nmail@gmail.com', Now(), 'benyouyou', 'Noa', Now());
    INSERT INTO Users(id_player,mail,created_at,mdp,username,last_connexion) VALUES( 4 , 'mail@gmail.com', Now(), 'benyouyou', 'Célian', Now());

    /* mise a jour du mot de passe de l'utilisateur grace a l'identification id*/

    UPDATE Users
    SET mdp = 'azerbaïdjanais'
    WHERE id_player = 1;

    /* mise a jour du mot de passe de l'utilisateur grace a l'identification id et mdp*/

    UPDATE Users
    SET mail = 'noamail@gmail.com'
    WHERE id_player = 1 AND mdp = 'benyouyou';

    /* récupération des donner de l'utilisateur */

    SELECT *
    FROM Users
    WHERE mail = mail AND mdp = mdp;

    /* Ajout de fausse données pour des test dans la table Games */

    INSERT INTO Games(id_game, game_name) VALUE(1,'The Power Of Memory');

    /* récupération des donner de l'utilisateur depuis la bases de doner Uses, Games et Scores */

    SELECT Games.game_name, Users.username, Scores.difficulty, Scores.score_game 
    FROM Scores 
    INNER JOIN Games ON Games.id_game = Scores.id_game
    INNER JOIN Users ON Scores.id_player = Users.id_player
    ORDER BY username, difficulty, score_game;

    /* récupération des donner de l'utilisateur depuis la bases de doner Uses, Games et Scores */

    SELECT Games.game_name, Users.username, Scores.difficulty, Scores.score_game
    FROM Scores
    INNER JOIN Games ON Games.id_game = Scores.id_game
    INNER JOIN Users ON Scores.id_player = Users.id_player
    ORDER BY username, difficulty, score_game;

    /* mise a jour du score quand c'est le même jeu et la même difficulty */

    UPDATE Scores
    INNER JOIN Games ON Scores.id_game = Games.id_game
    SET score_game = 100
    WHERE score_game IS NOT NULL AND Games.game_name = 'The Power Of Memory' AND difficulty = 'hard';

    /* Ajout defausse données pour des test dans la table Messages */


    INSERT INTO Messages (id_message, id_game, id_player, message, time_message) VALUE (11, 1, 1, 'Hello benyouyou',Now());
    INSERT INTO Messages (id_message, id_game, id_player, message, time_message) VALUE (2, 1, 2, 'Hello Noé', Now());
    INSERT INTO Messages (id_message, id_game, id_player, message, time_message) VALUE (3, 1, 3, 'Hello Noa', Now());
    INSERT INTO Messages (id_message, id_game, id_player, message, time_message) VALUE (4, 1, 4, 'Hello Célian', Now());


    /* récupération des messages datant de moins de 24H et diffinire qui est expiditeur ou non  */

    SELECT Messages.message, Messages.id_message, Messages.time_message,
    CASE WHEN Users.id_player = 1 THEN TRUE ELSE FALSE END AS estExpediteur
    FROM Messages
    INNER JOIN Users On Users.id_player = Messages.id_player
    WHERE DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 1 DAY);
    