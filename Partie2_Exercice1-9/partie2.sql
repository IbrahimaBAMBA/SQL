CREATE TABLE IF NOT EXISTS `languages`; --Mgic quote:tout ce qui est à l'interieur est considéré comme chaine de caractere
--Je cree une table avec cette commande. le if not exists permet de savoir si la table existe déjà.Si la database presente une armoire, les tables sont les tiroirs
(`id` INT AUTO_INCREMENT PRIMARY KEY,
--  INT pour les données numérique, AUTO_INCREMENT donne automatiquement l'id,PRIMARY KEY est son numero d'identification unique
   `language` VARCHAR(30));
   --VARCHAR definit le nombre de caractères attribués
 --Exercice1------------------------------------------------------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `tools`
(`id` INT AUTO_INCREMENT PRIMARY KEY, `tool` VARCHAR(30));--Les mêmes commentaires que l'exercice 1
 -- Exercice2------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `frameworks`
(`id` INT AUTO_INCREMENT PRIMARY KEY, `name` VARCHAR(30));--Les commentaires que les exo1 et exo2
--Exercice3---------------------------------------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `librairies`
(`id `INT AUTO_INCREMENT PRIMARY key, `librairy` VARCHAR(30));--Les sont les mêmes exo1, exo2, exo3/ Exercice4

CREATE TABLE IF NOT EXISTS `ide`
(`id `INT AUTO_INCREMENT PRIMARY KEY, `ideName` VARCHAR(30));
 --Mêmes commentaires exo1,exo2,exo3,exo4,exo5/ Exercice5---------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `webDevelopment`
(`id` INT AUTO_INCREMENT PRIMARY KEY, `name` VARCHAR(30));
 --Mêmes commentaires que l'exo1 à exo5/ Exercice6--------------------------------------------------------------------------

DROP TABLE `tools`;
 -- Supprimer d'une table

 DROP TABLE `ide`;
 -- Supprimer d'une table

 --TP exercice 2,
 --Créer une BD codex,avec une table clients/Chaque virgule represente une nouvelle ligne de la table/ex: les chemises d1 tiroir
 CREATE DATABASE `codex`;
 USE `codex`;
 CREATE TABLE IF NOT EXISTS `clients`
 (`id` INT AUTO_INCREMENT PRIMARY KEY,
   `lastName `VARCHAR(30),
   `firstName` VARCHAR(30),
   `birthDATE` DATE,
   `address` VARCHAR(30),
   `firstPhoneNumber` INT,
   `secondPhoneNumber` INT,
   `mail` VARCHAR(30));
