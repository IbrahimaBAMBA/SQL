--Affiche les données entre deux nombres
USE `webDevelopment`;
SELECT
*
FROM
 `frameworks`
WHERE
 `version`
LIKE       --permet de faire une comparaison avec des joker
 '%2.%';   --le % se met n'importe où au debut comme à la fin comme au milieu
+----+-----------+---------+
| id | framework | version |
+----+-----------+---------+
|  1 | Symfony   | 2.8     |
|  4 | Jquery    |  2.10   |
+----+-----------+---------+
--Exercice1------------------------------------------------------------------------------------------------------
-- L'operateur IN permet une recherche sur une liste de valeur
USE `webDevelopment`;
SELECT
*
FROM
 `frameworks`
WHERE
 `id`
IN
 (1,3);
+----+-----------+---------+
| id | framework | version |
+----+-----------+---------+
|  1 | Symfony   | 2.8     |
|  3 | Jquery    |  1.6    |
+----+-----------+---------+
--Exercice2------------------------------------------------------------------------------------------------------

--Pour pouvoir faire une recherche sur un intervalle
SELECT
*
FROM
 `ide`
WHERE
 `date`
BETWEEN
 '2010-01-01'
AND
 '2011-12-31';
+----+----------+---------+------------+
| id | name     | version | date       |
+----+----------+---------+------------+
|  3 | Eclipse  | 3.6     | 2010-06-01 |
|  4 | Eclipse  | 3.7     | 2011-06-01 |
|  6 | NetBeans | 7       | 2011-04-01 |
+----+----------+---------+------------+
--Exercice3-------------------------------------------------------------------------------------------------------
