-- Etape 1
SELECT * FROM plat ORDER BY prix desc;

-- Etape 2
SELECT plat.id_plat, plat.nom, plat.prix, categorie.libelle as categorie FROM plat LEFT JOIN categorie ON plat.id_categorie =  categorie.id_categorie;

-- Etape 3
SELECT commande_plat.id_commande, sum(plat.prix * commande_plat.quantite) as total_commande FROM commande_plat JOIN plat on plat.id_plat = commande_plat.id_plat group by commande_plat.id_commande;