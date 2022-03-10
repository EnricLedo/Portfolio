/*
Pràctica UF2P2 - Informació d'una BD (solució) - INSERT i SELECT
A Terrassa es vol obrir una nova pizzeria amb servei a domicili i ens ha demanat que 
li dissenyem la base de dades que anomenarem pizzeria.

Sabem que els client realitzaran les comanda per telèfon, per tant la pizzeria 
utilitzarà el número telefònic per cercar-ho però alhora té un identificador propi
com a client auto-generat. A més volem registrar el nom, l’adreça i la població del client. 
Tots aquests camps són obligatoris que s'omplin i sabem que la majoria de client que es registren són de Terrassa.

També volem registrar l’empleat que realitza cada comanda. 
Cada empleat està identificat per un codi numèric (que sabem que com a molt tindrà 3 xifres), 
i també volem emmagatzemar sempre el seu nom i els cognoms
.
En la carta de producte tenim tres categories: pizza, beguda i postre.
De les pizza volem registrar un codi numèric, el nom, el preu i els ingredient 
dels quals estan compostes. Cada ingredient estarà codificat per 
un codi de tres lletres i tindrem també el seu nom.

De les beguda volem registrar un codi numèric, el nom, el preu,
el volum de líquid que conté en centilitres i si es tracta d’una beguda alcohòlica.
De les postre volem registrar un codi numèric, el nom i el preu.
*/

USE uf2_p2_pizzeria;
   
-- Tasca 5. Insert
INSERT INTO client (nom, telefon, adreca, poblacio) VALUE ('Josep Vila', '937853354', 'C. del Pi, 23', DEFAULT);
INSERT INTO client (nom, telefon, adreca) VALUE ('Carme Garcia', '937883402', 'Plaça Nova 3');
INSERT INTO client (nom, telefon, adreca, poblacio) VALUE ('Enric Miralles', '606989866', 'Carrer Romaní 6','Matadepera');
INSERT INTO client (nom, telefon, adreca, poblacio) VALUE ('Miquel Bover', '937753222', 'Carrer Can Boada 78', DEFAULT);
INSERT INTO client (nom, telefon, adreca) VALUE ('Marta Ribas', '937862655', 'Carrer Aviació 3');
INSERT INTO client (nom, telefon, adreca) VALUE ('Guillem Jam', '937858555', 'Carrer de Dalt, 4');
INSERT INTO client (nom, telefon, adreca) VALUE ('Júlia Guillén', '626895456', 'C. Robert 8');

INSERT INTO empleat (nom, cognoms) VALUE ('Jordi', 'Casas');
INSERT INTO empleat (nom, cognoms) VALUE ('Marta', 'Pou');

INSERT INTO comanda (data_hora, domicili_local, client_id, empleat_id) VALUE ('20170109204500', 'L', 1, 1);
INSERT INTO comanda (data_hora, domicili_local, client_id, empleat_id) VALUE ('20170109205100', 'D', 2, 1);
INSERT INTO comanda (data_hora, domicili_local, client_id, empleat_id) VALUE ('20170109212000', 'D', 3, 1);
INSERT INTO comanda (data_hora, domicili_local, client_id, empleat_id) VALUE ('20170109213300', 'D', 4, 2);
INSERT INTO comanda (data_hora, domicili_local, client_id, empleat_id) VALUE ('20170110210000', 'D', 5, 1);
INSERT INTO comanda (data_hora, domicili_local, client_id, empleat_id) VALUE ('20170110213500', 'L', 6, 2);
INSERT INTO comanda (data_hora, domicili_local, client_id, empleat_id) VALUE ('20170110215000', 'D', 1, 2);
INSERT INTO comanda (data_hora, domicili_local, client_id, empleat_id) VALUE ('20170111203200', 'D', 2, 1);
INSERT INTO comanda (data_hora, domicili_local, client_id, empleat_id) VALUE ('20170111211000', 'D', 7, 1);
INSERT INTO comanda (data_hora, domicili_local, client_id, empleat_id) VALUE ('20170111212400', 'D', 1, 2);

INSERT INTO producte (nom, preu) VALUE ('Ampolla Coca-Cola', 1.95);
INSERT INTO producte (nom, preu) VALUE ('Ampolla Fanta Llimona', 1.95);
INSERT INTO producte (nom, preu) VALUE ('Llauna Nestea', 1.50);
INSERT INTO producte (nom, preu) VALUE ('Llauna Cervesa Damm', 1.55);
INSERT INTO producte (nom, preu) VALUE ('Llauna Cervesa sense alcohol', 1.55);
INSERT INTO producte (nom, preu) VALUE ('Pizza Barbacoa' ,19.95);
INSERT INTO producte (nom, preu) VALUE ('Pizza Carbonara', 18.95);
INSERT INTO producte (nom, preu) VALUE ('Pizza Hawaiana', 16.95);
INSERT INTO producte (nom, preu) VALUE ('Pizza 4 estacions', 18.95);
INSERT INTO producte (nom, preu) VALUE ('Pizza Ibèrica', 21.95);
INSERT INTO producte (nom, preu) VALUE ('Pizza De la casa', 19.95);
INSERT INTO producte (nom, preu) VALUE ('Gelat Cornetto Classic', 1.00);
INSERT INTO producte (nom, preu) VALUE ('Paquet de trufes de xocolata', 2.25);
INSERT INTO producte (nom, preu) VALUE ('Gelat Magnum', 1.95);

INSERT INTO beguda (id_producte, capacitat, alcoholica) VALUE (1, 50, 'N');
INSERT INTO beguda (id_producte, capacitat, alcoholica) VALUE (2, 50, 'N');
INSERT INTO beguda (id_producte, capacitat, alcoholica) VALUE (3, 33, 'N');
INSERT INTO beguda (id_producte, capacitat, alcoholica) VALUE (4, 33, 'S');
INSERT INTO beguda (id_producte, capacitat, alcoholica) VALUE (5, 33, 'N');

INSERT INTO pizza (id_producte) VALUE (6);
INSERT INTO pizza (id_producte) VALUE (7);
INSERT INTO pizza (id_producte) VALUE (8);
INSERT INTO pizza (id_producte) VALUE (9);
INSERT INTO pizza (id_producte) VALUE (10);
INSERT INTO pizza (id_producte) VALUE (11);

INSERT INTO postre (id_producte) VALUE (12);
INSERT INTO postre (id_producte) VALUE (13);
INSERT INTO postre (id_producte) VALUE (14);

INSERT INTO ingredient (id_ingredient, nom) VALUE ('MOZ', 'Mozzarella');
INSERT INTO ingredient (id_ingredient, nom) VALUE ('TOM', 'Salsa de tomàquet');
INSERT INTO ingredient (id_ingredient, nom) VALUE ('BAC', 'Bacon');
INSERT INTO ingredient (id_ingredient, nom) VALUE ('POL', 'Pollastre');
INSERT INTO ingredient (id_ingredient, nom) VALUE ('CAR', 'Carn');
INSERT INTO ingredient (id_ingredient, nom) VALUE ('BAR', 'Salsa barbacoa');
INSERT INTO ingredient (id_ingredient, nom) VALUE ('XAM', 'Xampinyons');
INSERT INTO ingredient (id_ingredient, nom) VALUE ('CAB', 'Salsa carbonara');
INSERT INTO ingredient (id_ingredient, nom) VALUE ('PIN', 'Pinya');
INSERT INTO ingredient (id_ingredient, nom) VALUE ('PER', 'Pernil york');
INSERT INTO ingredient (id_ingredient, nom) VALUE ('TON', 'Tonyina');
INSERT INTO ingredient (id_ingredient, nom) VALUE ('OLI', 'Olives negres');
INSERT INTO ingredient (id_ingredient, nom) VALUE ('NAT', 'Tomàquet natural');
INSERT INTO ingredient (id_ingredient, nom) VALUE ('IBE', 'Pernil ibèric'); 
        
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (6, 'MOZ');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (6, 'TOM');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (6, 'BAC');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (6, 'POL');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (6, 'CAR');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (6, 'BAR');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (7, 'MOZ');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (7, 'TOM');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (7, 'BAC');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (7, 'XAM');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (7, 'CAB');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (8, 'MOZ');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (8, 'TOM');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (8, 'PIN');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (8, 'PER');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (9, 'MOZ');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (9, 'TOM');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (9, 'TON');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (9, 'OLI');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (9, 'XAM');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (10, 'MOZ');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (10, 'NAT');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (10, 'IBE');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (11, 'MOZ');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (11, 'TOM');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (11, 'BAC');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (11, 'PER');
INSERT INTO pizza_ingredient (id_producte, id_ingredient) VALUE (11, 'CAR');


    
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10000, 6, 2);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10000, 1, 2);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10000, 2, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10000, 12, 2);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10001, 10, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10002, 11, 2);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10002, 1, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10002, 4, 3);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10002, 14, 4);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10003, 7, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10003, 8, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10003, 4, 2);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10003, 5, 2);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10004, 7, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10004, 9, 2);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10004, 1, 6);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10005, 5, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10005, 1, 2);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10005, 12, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10005, 13, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10006, 6, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10006, 10, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10006, 11, 2);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10007, 6, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10007, 1, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10007, 2, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10008, 6, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10008, 4, 2);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10008, 14, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10009, 7, 1);
INSERT INTO comanda_producte (numero, id_producte, quantitat) VALUE (10009, 9, 1);

-- Tasca 6. Select
-- Tasca 6.1. Mostra el nom, telèfon i adreça dels client de Terrassa
SELECT nom, telefon, adreca
FROM client
WHERE poblacio = 'Terrassa';

-- Tasca 6.2. Mostra el nom, telèfon i adreça dels client que no viuen a Terrassa
SELECT nom, telefon, adreca
FROM client
WHERE poblacio NOT IN ('Terrassa');
#WHERE poblacio <> 'Terrassa'; -- Equivalent

-- Tasca 6.3. Mostra el nom dels client que el seu telèfon comenci per '93785'.
SELECT nom, telefon, adreca
FROM client
WHERE telefon LIKE '93785%';

-- Tasca 6.4. Mostra el nom i cognoms dels empleats amb una ‘a’ en el seu nom o cognom.
SELECT nom, cognoms
FROM empleat
WHERE (nom LIKE '%a%') OR (cognoms LIKE '%a%');

-- Tasca 6.5. Mostra el número i la data-hora  de les comanda han demanat per recollir al local.
SELECT numero, data_hora
FROM comanda 
WHERE domicili_local = 'L';

-- Tasca 6.6. Mostra el número de les comanda han demanat per servir a domicili al client Josep Vila.
SELECT numero
FROM comanda 
WHERE domicili_local = 'D' AND client_id = 1;

-- Tasca 6.7. Mostra el nom i preu dels producte que tinguin un preu superior a 17 €.
SELECT nom, preu
FROM producte
WHERE preu > 17;
 
-- Tasca 6.8. Mostra els els indredients que el seu nom comenci per 'Pernil'.
SELECT id_ingredient, nom
FROM ingredient 
WHERE (nom LIKE 'Pernil%');

-- Tasca 6.9. Mostra les pizza que tinguin algun d'aquests ingredient: Xampinyons, Salsa carbonara, Pinya.
SELECT DISTINCT id_producte
FROM pizza_ingredient 
WHERE id_ingredient IN ('XAM', 'CAB', 'PIN');

-- Tasca 6.10. Mostra les comanda que s'ha demanat algun producte amb una quantitat entre 3 i 4.
SELECT DISTINCT numero
FROM comanda_producte
WHERE quantitat BETWEEN 3 AND 4;