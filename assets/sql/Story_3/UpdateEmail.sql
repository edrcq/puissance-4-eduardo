/*Update email*/

UPDATE Users SET email="quentin.lebg@email.com" WHERE id ="1" and password=SHA2("42",256)

/* On va mettre à jour l'email dans la table Users (Utilisateurs) à l'id 1 et avec le mot de passe "42" qui va être hashé 
et comparé avec celui dans la base de données.