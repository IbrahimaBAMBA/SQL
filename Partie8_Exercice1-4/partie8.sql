
USE development;
--On veut afficher les colonnes name des deux tables, avec celle qui nous intéresse en premier
 SELECT
  `languages`.`name`, `frameworks`.`name`
FROM
--Donc on precise d'ou on veut les afficher, en l'occurence la table languages
 `languages`
 -- Le left join parce que sur une représentation graphique le cercle du tableau 1 est à gauche
 --et la jointure se fera de la gauche en selectionnant le cercle du tableau 2 de droite(frameworks)
LEFT JOIN
 `frameworks` ON `languages.id` = `frameworks.languagesId`;
 --Exercice1-----------------------------------------------------------------------------------------------

SELECT
  `languages`.`name`, `frameworks`.`name`
FROM
 `languages` INNER JOIN `frameworks` ON `languages.id` = `frameworks.languagesId`;
--Exercice2--------------------------------------------------------------------------------------------------
SELECT
	`fr`.`name` AS `nameFrameworks`, `la`.`name` AS `nameLanguages`
FROM
	`frameworks` AS `fr`
	RIGHT JOIN `languages` AS `la` ON `frameworks`.`languagesId` = `languages`.`id`;
  Exercice2-------------------------------------------------------------------------------------------------
  SELECT
	`languages`.`name` AS `nameLanguage`, COUNT(`frameworks`.`name`) AS `frameworksNumber`
FROM
	`languages`
	LEFT JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId`
GROUP BY
	`languages`.`name`;
  Exercice3------------------------------------------------------------------------------------------------
  SELECT
	`languages`.`name` AS `nameLanguage`, COUNT(`frameworks`.`name`) AS `frameworksNumber`
FROM
	`languages`
	LEFT JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId`
GROUP BY
	`languages`.`name`
	HAVING COUNT(`frameworks`.`name`) > 3;
  Exercice4---------------------------------------------------------------------------------------------------
