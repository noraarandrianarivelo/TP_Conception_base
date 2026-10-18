CREATE TABLE serveur (
    id_serveur serial primary key,
    nom_serveur varchar(50)
);

CREATE TABLE tables (
    id_table serial primary key,
    nom_table varchar(50)
);

ALTER TABLE commande ADD COLUMN id_serveur int;
ALTER TABLE commande ADD COLUMN id_table int;

INSERT INTO serveur (nom_serveur) VALUES
('Njaka Rakoto'),
('Lalao Rasoa');

INSERT INTO tables (nom_table) VALUES 
('Table 1'),
('Table 2'),
('Table 3'),
('Table 4'),
('Table 5'),
('Table 6'),
('Table 7'),
('Table 8');

UPDATE commande set id_serveur = 1 where id_commande in (1,3);
UPDATE commande set id_serveur = 2 where id_commande in (2);

