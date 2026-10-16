CREATE TABLE categorie (
    id_categorie serial primary key,
    libelle varchar(50)
);

INSERT INTO categorie (libelle)
VALUES
('Plat Malagasy'),
('Plat Chinois'),
('Soupes'),
('Desserts'),
('Boissons');

ALTER TABLE plat add column id_categorie int;

UPDATE plat set id_categorie = (SELECT id_categorie FROM categorie WHERE libelle = 'Plat Malagasy') WHERE nom IN ('Romazava', 'Ravitoto sy henakisoa', 'Akoho sy voanio');
UPDATE plat set id_categorie = (SELECT id_categorie FROM categorie WHERE libelle = 'Plat Chinois') WHERE nom IN ('Mi sao');
UPDATE plat set id_categorie = (SELECT id_categorie FROM categorie WHERE libelle = 'Soupes') WHERE nom IN ('Soupe chinoise');
UPDATE plat set id_categorie = (SELECT id_categorie FROM categorie WHERE libelle = 'Desserts') WHERE nom IN ('Mofo gasy (les 4)');
UPDATE plat set id_categorie = (SELECT id_categorie FROM categorie WHERE libelle = 'Boissons') WHERE nom IN ('Ranon ampango');

ALTER TABLE plat ALTER COLUMN id_categorie set not null;

INSERT INTO categorie (libelle) VALUES ('Autre');