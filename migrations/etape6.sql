CREATE TABLE mode_paiement(
    id_mode_paiement serial primary key,
    libelle varchar(50)
);

INSERT INTO mode_paiement (libelle) VALUES
('Mvola'),
('Orange Money'),
('Airtel Money'),
('Espèces');

CREATE TABLE paiement(
    id_paiement serial primary key,
    id_commande int references commande(id_commande),
    id_mode_paiement int references mode_paiement(id_mode_paiement),
    montant int,
    reference varchar(50)
);

INSERT INTO paiement (id_commande, id_mode_paiement, montant, reference) VALUES
(1, 4, 10000, NULL),
(1, 1, 5000, 'REF123'),
(2, 2, 6000, 'REF111');

insert into paiement (id_commande, id_mode_paiement, montant, reference) values
(1, 2, 7000, 'REF789');


