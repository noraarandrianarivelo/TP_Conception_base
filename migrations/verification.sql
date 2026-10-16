-- Etape 1
SELECT * FROM plat ORDER BY prix desc;

-- Etape 2

SELECT plat.id_plat, plat.nom, plat.prix, categorie.libelle as categorie FROM plat LEFT JOIN categorie ON plat.id_categorie =  categorie.id_categorie;