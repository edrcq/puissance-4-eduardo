/*Create User on Sign In*/

INSERT IGNORE INTO Users (email, username, SHA2(password,256)) VALUES ("quentin.y@email.com", "quentin dupont","42")
UPDATE Users SET password=SHA2("42",256) WHERE email="quentin.y@email.com" and username="quentin dupont"

/*
On utilise INSERT INTO pour inserer des variables (VALUES) dans la table Users avec le format "INSERT INTO table (column1,column2,...) VALUES (data1,data2,...)"
- L'email est donnée avec email et est sous forme de chaine de characteres (string). Ici "quentin.y@email.com"
- Le pseudo est donné avec username et est sous forme de integer. Ici "quentin dupont"
- Le mot de passe est donné avec password et est sous forme de chaine de characteres (string). Ici "43"
- La date et heure d’inscription est automatique au moment de la requete.
Avec le paramêtre IGNORE, les données ne seront ajoutées que si le pseudo et l'email ne se trouvent pas dans la base de données.
On utilise ensuite UPDATE pour inserer le mot de passe (password) dans la table Users là où l'email est "quentin.y@email.com" et le username est "quentin dupont".
Le mot de passe est hashé au moment de UPDATE la ligne.
Lors de la connection de l'utilisateur, on pourra comparer le hash dans la base de données et le mot de passe donné par l'utilisateur hashé sur le moment.
*/