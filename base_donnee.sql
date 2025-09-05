Creation de la table de la base de donnees
CREATE DATABASE couloir_fc;
Utilisation de la base de donnees
USE couloir_fc;

Creation de la table des equipes
CREATE TABLE equipe(id INT PRIMARY KEY AUTO_INCREMENT,
nom VARCHAR(50) NOT NULL,
logo VARCHAR(255) NOT NULL,
entraineur VARCHAR(50) NOT NULL);

creation de la table des joueurs
CREATE TABLE joueurs( id INT PRIMARY KEY AUTO_INCREMENT,
nom VARCHAR(50) NOT NULL,
poste VARCHAR(20) NOT NULL,
performance_id INT NOT NULL,
equipe_id INT NOT NULL,
FOREIGN KEY(equipe_id) REFERENCES equipes(id));

Creation de la table des matchs
CREATE TABLE matchs (id INT PRIMARY KEY AUTO_INCREMENT,
date DATE NOT NULL,
heure TIME NOT NULL,
equipe_domicile_id INT NOT NULL,
equipe_exterieur_id INT NOT NULL,
score_domicile INT,
score_exterieur int,
FOREIGN KEY (equipe_domicile_id)
REFERENCES equipes(id),
FOREIGN KEY (equipe_exterieur_id)
REFERENCES equipes(id));

Creation de la table des resultats
CREATE TABLE resultat(id INT PRIMARY KEY AUTO_INCREMENT,
match_id INT NOT NULL,
joueur_id INT NOT NULL,
but INT,
carton_jaune BOOLEAN,
carton_rouge BOOLEAN,
FOREIGN KEY(match_id)REFERENCES matchs(id),
FOREIGN KEY(joueur_id)REFERENCES joueurs(id));

insertion de donnees dans la table des equipes
INSERT INTO equipes(nom,logo,entraineur)VALUES
('Couloir FC','logo_couloir_fc.png','Entraineur Couloir FC'),
('Equipe B','logo_b.png','Entraineur B'),
('Equipe C','logo_c.png','Entraineur C');

insertion de donnees dans la tables des joueurs
INSERT INTO joueurs(nom,poste,performance,equipe_id)VALUES
('Michael.S','Gardien','8 clean schips'1),
('Manyan','Defenseur','2 Buts'3),
('Pierro','Gardien','03 Clean Chips'2),
('C.Bogico','Attaquant','01 But'1),
('Halland','Defenseur','2 Buts',2)
('Armelo','Milieu','O6 Passe Decisive'1),

insertion des donnees dans la table des matchs
INSERT INTO matchs(date,heure,equipe_domicile_id,equipe_exterieur_id,score_domicile,score_exterieur)VALUES
('2024-12-30','14:00:00', 1,2,2,1),
('2025-02-12','15:00:00', 2,3,1,2),
('2025-03-23','13:00:00', 1,3,3,0),
('2025-08-17','15:00:00', 1,2,1,1);

insertion de donnees dans la table des resultats
INSERT INTO resultat(match_id,joueur_id,but,carton_jaune,carton_rouge)VALUES
(1,1,2,FALSE,FALSE),
(1,2,0,TRUE,FALSE),
(2,3,1,FALSE,FALSE),
(3,1,2,FALSE,FALSE),
(3,5,1,FALSE,FALSE),
(4,6,1,FALSE,FALSE);
