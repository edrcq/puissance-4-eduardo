/*Create table Game (Jeu)*/

CREATE TABLE
  `Game` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `game_name` varchar(255) NOT NULL UNIQUE,
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 0 DEFAULT CHARSET = utf8mb4

/*
La table s'appelle Game et est composée de 2 colonnes qui sont id et game_name.
- id est automatisé avec auto_increment, peut aller jusqu'à 10 chiffres, est un integer (ne peut avoir que des chiffres) et ne peut être null (vide)
- game_name peut aller jusqu'à 255 characteres, est une varchar (string) et ne peut être null (vide)
On se refere à la table avec la clé primaire id
Le paramètre "unsigned" permet de ne pas avoir de valeur inférieure à 0
On définit que le auto_increment commence après 0, l'engine qui sera InnoDB et les données seront écrites et lisibles en utf8mb4
*/