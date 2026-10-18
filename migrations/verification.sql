-- Etape 1
SELECT * FROM plat ORDER BY prix desc;

-- Etape 2
SELECT categorie.libelle as categorie, count(plat.id_plat) as nombre_plat FROM plat RIGHT JOIN categorie ON plat.id_categorie = categorie.id_categorie GROUP BY categorie.libelle, categorie.id_categorie;

-- Etape 3
SELECT commande_plat.id_commande, sum(plat.prix * commande_plat.quantite) as total_commande FROM commande_plat JOIN plat on plat.id_plat = commande_plat.id_plat group by commande_plat.id_commande;

-- Etape 4
SELECT commande.id_commande, commande.date_commande, CASE WHEN commande.id_client IS NULL THEN 'Client de passage' ELSE client.nom_client END as nom_client FROM commande LEFT JOIN client ON commande.id_client = client.id_client;

-- Etape  5
SELECT serveur.nom_serveur, count(commande.id_commande) as nombre_commande FROM serveur LEFT JOIN commande ON commande.id_serveur = serveur.id_serveur GROUP BY serveur.id_serveur, serveur.nom_serveur;


SELECT serveur.nom_serveur, count(commande.id_commande) as nombre_commande,  COALESCE(SUM(plat.prix * commande_plat.quantite),0) as CA FROM serveur 
LEFT JOIN commande ON commande.id_serveur = serveur.id_serveur 
LEFT JOIN commande_plat ON commande_plat.id_commande = commande.id_commande 
LEFT JOIN plat ON plat.id_plat = commande_plat.id_plat 
GROUP BY serveur.id_serveur, serveur.nom_serveur;

-- Etape 6
SELECT commande_plat.id_commande, sum(plat.prix * commande_plat.quantite) as total_commande FROM commande_plat JOIN plat on plat.id_plat = commande_plat.id_plat group by commande_plat.id_commande;
-- id_commande | total_montant

SELECT id_commande, sum(montant) as total_paye FROM paiement GROUP BY id_commande;
-- id_commande | total_paye

SELECT c.id_commande, COALESCE(c.total_commande,0) AS total_montant, COALESCE(p.total_paye,0) AS total_paye, (COALESCE(c.total_commande,0) - COALESCE(p.total_paye,0)) AS reste_a_paye FROM 
    (SELECT commande_plat.id_commande, sum(plat.prix * commande_plat.quantite) as total_commande FROM commande_plat JOIN plat on plat.id_plat = commande_plat.id_plat group by commande_plat.id_commande) as c
    LEFT JOIN 
    (SELECT id_commande, sum(montant) as total_paye FROM paiement GROUP BY id_commande) as p
    ON c.id_commande = p.id_commande
    WHERE (COALESCE(c.total_commande,0) - COALESCE(p.total_paye,0)) > 0;