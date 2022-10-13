/*Create table Message */

CREATE TABLE
  `Message` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `player_id` int(10) unsigned NOT NULL,
    `game_id` int(10) unsigned NOT NULL,
    `message` varchar(255) NOT NULL,
    `game_time` timestamp NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 0 DEFAULT CHARSET = utf8mb4
  
/*
La table s'appelle Message est composée de 5 colonnes qui sont id, player_id, game_id, message et game_time.
- id est automatisé avec auto_increment, est un integer qui peut aller jusqu'à 10 chiffres (ne peut avoir que des chiffres) et ne peut être null (vide)
- player_id peut aller jusqu'à 10 chiffres, est un integer (ne peut avoir que des chiffres) et ne peut être null (vide)
- game_id peut aller jusqu'à 10 chiffres, est un integer (ne peut avoir que des chiffres) et ne peut être null (vide)
- message peut aller jusqu'à 255 characteres, est une varchar (string) et ne peut être null (vide)
- game_time est un timestamp (contient du temps) automatisé pour mettre le temps d'ajout de la rêquete avec current_timestamp() et ne peut être null (vide)
On se refere à la table avec la clé primaire id
Le paramètre "unsigned" permet de ne pas avoir de valeur inférieure à 0
On définit que le auto_increment commence après 0, l'engine qui sera InnoDB et les données seront écrites et lisibles en utf8mb4
*/