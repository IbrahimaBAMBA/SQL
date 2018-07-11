USE webDevelopment;
--Pour supprimer la donnée,on selectionne la table, le nom de la colonne ou la donnée  se trouve et ensuite le nom de la donnée
--Si vous désirez supprimer toutes les lignes d'une table, il suffit de ne pas préciser de clause WHERE.
DELETE FROM
 `languages`
WHERE
 `language`='HTML';
 --Exercice1

  UPDATE `frameworks`
  --SET `framework`='Symfony2' WHERE `id`=1 ;
 --
 -- SET
 -- `framework`='Symfony2'
 -- WHERE `id`=2 ;

 SET`frameworks` = 'Symfony2' WHERE `frameworks` = `Symfony`;
 --Exercice2

 USE webDevelopment;
 --Dans la table, on change une ligne dans la colonne version par 5.1 , la ligne dont l'id est 1

UPDATE
 `languages`
SET
 `version` = '5.1'
WHERE
 `language`= 'JavaScript'
AND
 `version` = '5';  
--Exercice3
--A faire dans le projet
