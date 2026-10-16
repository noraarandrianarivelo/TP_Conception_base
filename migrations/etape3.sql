CREATE TABLE commande (
    id_commande serial primary key,
    date_commande date
);

CREATE TABLE commande_plat (
    id_commande_plat serial primary key,
    id_commande int,
    id_plat int,
    quantite int
);

-- Commande 1
INSERT INTO commande (date_commande) values (now());
INSERT INTO commande_plat (id_commande, id_plat, quantite) values (1, 1, 2);
INSERT INTO commande_plat (id_commande, id_plat, quantite) values (1, 2, 1);

-- Commande 2
INSERT INTO commande (date_commande) values (now());
INSERT INTO commande_plat (id_commande, id_plat, quantite) values (2, 3, 5);
INSERT INTO commande_plat (id_commande, id_plat, quantite) values (2, 4, 2);