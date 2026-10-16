CREATE TABLE client (
    id_client serial primary key,
    nom_client varchar(100)
);

ALTER TABLE commande ADD COLUMN id_client int;

INSERT INTO client (nom_client) VALUES ('Mr RANDRIATAHINA');

UPDATE commande SET id_client = (SELECT id_client FROM client WHERE nom_client = 'Mr RANDRIATAHINA') WHERE id_commande IN (1, 3);

