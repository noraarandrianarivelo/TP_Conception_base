CREATE TABLE plat (
    id_plat serial primary key,
    nom varchar(50), 
    prix int
);


INSERT INTO plat (nom, prix)
VALUES
('Romazava', 7000),
('Ravitoto sy henakisoa', 8000),
('Akoho sy voanio', 8500),
('Mi sao', 6000),
('Soupe chinoise', 5000),
('Mofo gasy (les 4)', 1000),
('Ranon ampango', 500);