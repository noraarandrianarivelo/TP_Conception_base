## Etape 1
PLAT(**id_plat**, nom, prix) (nouveau)

> Pour le prix, j'ai choisi d'utiliser le type int. Et pour l'identifiant j'ai choisi serial primary key

## Etape 2
CATEGORIE(**id_categorie**, libelle) (nouveau)
PLAT(**id_plat**, nom, prix, #id_categorie) (modifie)

> Il est deconseille de mettre categorie VARCHAR(50) dans la table des plats parce que si un quelqu'un se trompe lors de la saisie du categorie durant l'ajout d'un nouveau plat, on aurait plusieurs categories differente pour un seul et meme categorie

ex: 
-----------------------
nom|categorie|prix|
---|----|-----|
Soupe tongotr'omby| soupe | 10000|
Soupe tamatave | SOUPE | 8000|

-> soupe et SOUPE sont 2 categorie differente

## Etape 3
COMMANDE(**id_commande**, date_commande) (nouveau)
COMMANDE_PLAT(**id_commande_plat**, #id_commande, #id_plat, quantite) (nouveau)

> J'ai mis la quantite dans la table COMMANDE_PLAT 

## Etape 4
CLIENT(**id_client**, nom_client) (nouveau)
COMMANDE (**id_commande**, date_commande, #id_client?) (nouveau)

> Non, ma cle etrangere n'est pas NOT NULL car il est possible que id_client soit vide. Pour ne perdre aucune commande, il faut utiliser COMMANDE LEFT JOIN CLIENT

## Etape 5
SERVEUR(**id_serveur**, nom_serveur) (nouveau)
TABLES(**id_table**) (nouveau)
COMMANDE (**id_commande**, date_commande, #id_client?, #id_serveur, #id_table?) (modifie)

> Une table de la salle et une commande sont deux choses differentes parce que une commande correspond aux achats a la table, et la table peut posseder plusieurs commandes.
> Le nom table pose probleme en sql car il y a une ambiguite entre table (sql) et table (nom de table)
