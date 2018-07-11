--ALTER TABLE nom_table ADD ... permet d'ajouter quelque chose (une colonne par exemple)
ALTER TABLE
 `languages`
ADD
 `versions`
VARCHAR(30);--Exercice1------------------------------------------------------------------------------------------

ALTER TABLE
 `frameworks`
 ADD
  `version` INT;--Exercice2 / INT est une entier-------------------------------------------------------------------
--On peut utiliser le ALTER TABLE nom_table CHANGE pour changer des noms de colonne
ALTER TABLE
 `languages`
CHANGE
 `versions` `version`
VARCHAR(30);--Exercice3--------------------------------------------------------------------------------------------

ALTER TABLE
 `frameworks`
CHANGE
 `name` `framework`
VARCHAR(30);--Exercice4--------------------------------------------------------------------------------------------
--Pour renommer le nom d'une colonne par un autre, ou inscrire deux fois le même nom comme dans l'exo
ALTER TABLE
 `frameworks`
MODIFY
 `version`
VARCHAR(10);Exercice5
--TP partie 3
--Suppression d'une colonne
ALTER TABLE
 `clients`
DROP
 `secondPhoneNumber`;
--En plus de changer l'ancien par le nouveau nom, il faut ajouter aussi un type en comme INT par exemple
ALTER TABLE
 `clients`
CHANGE
 `firstPhoneNumber` `phoneNumber` INT;
--Changement du type de colonne ou de description,toujours ajouter un type par défaut
ALTER TABLE
 `clients`
MODIFY
 `phoneNumber`
VARCHAR(30);
--Pour ajouter deux colonnes,les ajouter avec ADD pour chaque colonne
ALTER TABLE ADD
 `zipCode`
VARCHAR(10),
 ADD `city`
VARCHAR(20);

-- --Entrer dans la base de donnée 'webDevelopment' créer dans la partie 1,------CORRECTION--------
-- USE `webDevelopment`;
-- --EX1 = ajouter à la table languages une colonne versions (VARCHAR)
-- ALTER TABLE `languages`
-- ADD `versions` VARCHAR(20);
-- --EX2 = ajouter à la table frameworks une colonne version (INT)
-- ALTER TABLE `frameworks`
-- ADD `version` INT;
-- --EX3 = dans la table languages renommer la colonne versions en version.
-- ALTER TABLE `languages`
-- CHANGE `versions` `version` VARCHAR(20);
-- --EX4 = dans la table frameworks, renommer la colonne name en framework.
-- ALTER TABLE `frameworks`
-- CHANGE `name` `framework` VARCHAR(20);
-- --EX5 = ajouter à la table frameworks changer le type de la colonne version en VARCHAR de taille 10.
-- ALTER TABLE `frameworks`
-- MODIFY `version` VARCHAR(10);
-- --TP = Dans la base codex, dans la table clients :
-- USE `codex`;
--   --supprimer la colonne secondPhoneNumber
-- ALTER TABLE `clients`
-- DROP `secondPhoneNumber`;
--   --renommer la colonne firstPhoneNumber en phoneNumber
-- ALTER TABLE `clients`
-- CHANGE `firstPhoneNumber` `phoneNumber` INT;
--   --changer le type de la colonne phoneNumber en VARCHAR
-- ALTER TABLE `clients`
-- CHANGE `phoneNumber` `phoneNumber` VARCHAR(10);
--   --ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)
-- ALTER TABLE `clients`
-- ADD `zipCode` VARCHAR(5),
-- ADD `city` VARCHAR(20);
-- --En une seule ligne de commande :
-- ALTER TABLE `clients`
-- DROP `secondPhoneNumber`,
-- CHANGE `firstPhoneNumber` `phoneNumber` INT,
-- MODIFY `phoneNumber` VARCHAR(10),
-- ADD `zipCode` VARCHAR(5),
-- ADD `city` VARCHAR(20);
