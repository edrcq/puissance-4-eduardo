/*Create table Users (Utilisateurs) */

CREATE TABLE
  `Users` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `username` varchar(30) NOT NULL DEFAULT 'NULL' UNIQUE,
    `password` varchar(256) NOT NULL DEFAULT 'NULL',
    `email` varchar(50) NOT NULL DEFAULT 'NULL' UNIQUE,
    `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
    `last_connection` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 0 DEFAULT CHARSET = utf8mb4 
  

  /*
  La table s'appelle Users et est composée de 6 colonnes qui sont id, username, password, email, created_at et last_connection.
  - id est automatisé avec auto_increment, peut aller jusqu'à 10 chiffres, est un integer (ne peut avoir que des chiffres) et ne peut être null (vide)
  - username peut aller jusqu'à 30 characteres, est une varchar (string) et ne peut être null (vide)
  - password peut aller jusqu'à 255 characteres, est une varchar (string) et ne peut être null (vide)
  - email peut aller jusqu'à 50 characteres, est une varchar (string) et ne peut être null (vide)
  - created_at est un timestamp (contient du temps) automatisé pour mettre le temps d'ajout de la rêquete avec current_timestamp() et ne peut être null (vide)
  - last_connection est un timestamp (contient du temps) qui met par défaut le temps à '0000-00-00 00:00:00' et ne peut être null (vide)
  On se refere à la table avec la clé primaire id
  Le paramètre "unsigned" permet de ne pas avoir de valeur inférieure à 0
  Le paramètre "UNIQUE" permet de ne pas avoir deux fois le même username ou email
  On définit que le auto_increment commence après 0, l'engine qui sera InnoDB et les données seront écrites et lisibles en utf8mb4
  */
