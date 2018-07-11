--On selectionne la BD dans laquelle se fera les requètes
USE `webDevelopment`;
--On affiche toutes les données de la table language
SELECT * FROM `languages`;
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  4 | HTML       | version 5.1 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | javaScript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+
--Exercice1------------------------------------------------------------------------------------------------------

--Avec cette requète on affiche les lignes PHP de la colonne language de la table languages
SELECT
 `version` -- n'affichera que la version
FROM
 `languages`
WHERE
 `language`='PHP';
+----+----------+-------------+
| id | language | version     |
+----+----------+-------------+
|  2 | PHP      | version 5.2 |
|  3 | PHP      | version 5.4 |
|  8 | PHP      | version 7   |
+----+----------+-------------+
--Exercice2-----------------------------------------------------------------------------------------------------------------

--Pour cette requète utliser plutôt le OR-|| qui sert à la concatenation que le AND-&&,pour afficher et les lignes PHP et les lignes JavaScript
FROM
 `languages`
WHERE
 `language`='PHP'
 --`languages` IN (`PHP`,`JavaScript`) marche aussi pour aussi
 OR `language`= 'JavaScript';


+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | javaScript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+
--Exercice3----------------------------------------------------------------------------------------------------------------

--Pour cette requète utliser plutôt le OR-|| qui sert à la concatenation que le AND-&&,pour afficher et les lignes PHP et les lignes JavaScript
SELECT
*
FROM
 `languages`
WHERE
 `id`=3 OR `id`=5 OR `id`=7;
 --`id` IN (3,5,7); marche aussi
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  7 | javaScript | version 8   |
+----+------------+-------------+
--Exercice4--------------------------------------------------------------------------------------------------------------------------
--Dans la table languages,dans la colonne language,les deux premières lignes JavaScript(qui ne sont pasforcement dans l'ordre)
SELECT
*
FROM
 `languages`
WHERE
 `language`='JavaScript'
LIMIT 2;
+----+------------+-----------+
| id | language   | version   |
+----+------------+-----------+
|  1 | JavaScript | version 5 |
|  5 | JavaScript | version 6 |
+----+------------+-----------+
--Exercice5---------------------------------------------------------------------------------------------------------------------
--Dans la table languages,dans la colonne language, afficher tout ce qui est different(<>) du PHP
SELECT
*
FROM
 `languages`
WHERE
 `language` <> 'PHP';
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  4 | HTML       | version 5.1 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | javaScript | version 8   |
+----+------------+-------------+
--Exercice6----------------------------------------------------------------------------------------------------------------
--Cette requete affiche la colonne language par ordre alphabétique.
SELECT
*
FROM
 `languages`
ORDER BY
--ASC de manière ascendante et DESC de façon descendante
 `language` ASC;
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  4 | HTML       | version 5.1 |
|  1 | JavaScript | version 5   |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | javaScript | version 8   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  8 | PHP        | version 7   |
+----+------------+-------------+
--Exercice7---------------------------------------------------------------------------------------------------------------

--A faire dans le projet
