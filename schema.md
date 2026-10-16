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