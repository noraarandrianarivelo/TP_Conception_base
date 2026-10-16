-- Etape 1
SELECT * FROM plat ORDER BY prix desc;

-- Etape 2
SELECT categorie.libelle as categorie, count(plat.id_plat) as nombre_plat FROM plat RIGHT JOIN categorie ON plat.id_categorie = categorie.id_categorie GROUP BY categorie.libelle, categorie.id_categorie;

-- Etape 3
SELECT commande_plat.id_commande, sum(plat.prix * commande_plat.quantite) as total_commande FROM commande_plat JOIN plat on plat.id_plat = commande_plat.id_plat group by commande_plat.id_commande;

-- Etape 4
SELECT commande.id_commande, commande.date_commande, CASE WHEN commande.id_client IS NULL THEN 'Client de passage' ELSE client.nom_client END as nom_client FROM commande LEFT JOIN client ON commande.id_client = client.id_client;