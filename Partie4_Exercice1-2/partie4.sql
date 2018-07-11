--Insertion de plusieurs lignes avec une seule requète avec JavaScript= languge et version=version 5
--Exercice1
INSERT INTO `languages` (`language`, `version`)
VALUES      ('JavaScript', ' 5'),
            ('PHP', ' 5.2'),
            ('PHP', ' 5.4'),
            ('HTML', ' 5.1'),
            ('JavaScript', ' 6'),
            ('JavaScript', ' 7'),
            ('javaScript', ' 8'),
            ('PHP', ' 7');
--Insertion de plusieurs lignes avec une seule requète avec Symfony= framework et version=version 2.8
--On ajoute pas version comme dans l'exo précedant à cause du VARCHAR de 10 qu'on avait defini
--Exercice2---------------------------------------------------------------------------------------------------------
INSERT INTO `frameworks` (`framework`, `version`)
VALUES ('Symfony', '2.8'),
('Symfony', ' 3'),
('Jquery', ' 1.6'),
('Jquery', ' 2.10');

--A voir dans le projet
