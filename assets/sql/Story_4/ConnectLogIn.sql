/*Find user using password and email | Log In*/

SELECT * FROM Users WHERE email="quentin.lebg@email.com" and password=SHA2("42",256)

/*
Lors de la connection de l'utilisateur, on compare le hash dans la base de données et le mot de passe donné par l'utilisateur hashé sur le moment.
*/