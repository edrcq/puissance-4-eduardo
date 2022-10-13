/*Update password*/

UPDATE Users SET password=SHA2("44",256) WHERE id ="1"

/* On va mettre à jour le mot de passe dans la table Users (Utilisateurs) à l'id 1.
Le mot de passe à la colonne "password" sera hashé avec SHA2("44",256) là où 44 est le nouveau mot de passe non hashé.
*/