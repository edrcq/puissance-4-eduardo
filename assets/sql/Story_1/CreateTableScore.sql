/*Create table Score */

CREATE TABLE
  `Score` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `player_id` int(10) unsigned NOT NULL,
    `game_id` int(10) unsigned NOT NULL,
    `game_difficulty` int(5) unsigned NOT NULL,
    `score` int(10) unsigned NOT NULL,
    `game_time` timestamp NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 0 DEFAULT CHARSET = utf8mb4
  

  /*
  La table s'appelle Score et est composée de 6 colonnes qui sont id, player_id, game_id, game_difficulty, score et game_time.
  - id est automatisé avec auto_increment, peut aller jusqu'à 10 chiffres, est un integer (ne peut avoir que des chiffres) et ne peut être null (vide)
  - player_id peut aller jusqu'à 10 chiffres, est un integer (ne peut avoir que des chiffres) et ne peut être null (vide)
  - game_id peut aller jusqu'à 10 chiffres, est un integer (ne peut avoir que des chiffres) et ne peut être null (vide)
  - game_difficulty peut aller jusqu'à 5 chiffres, est un integer (ne peut avoir que des chiffres) et ne peut être null (vide)
  - score peut aller jusqu'à 10 chiffres, est un integer (ne peut avoir que des chiffres) et ne peut être null (vide)
  - game_time est un timestamp (contient du temps) automatisé pour mettre le temps d'ajout de la rêquete avec current_timestamp() et ne peut être null (vide)
  On se refere à la table avec la clé primaire id
  Le paramètre "unsigned" permet de ne pas avoir de valeur inférieure à 0
  On définit que le auto_increment commence après 0, l'engine qui sera InnoDB et les données seront écrites et lisibles en utf8mb4
  */