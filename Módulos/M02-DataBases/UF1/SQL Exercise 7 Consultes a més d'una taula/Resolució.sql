USE uf2_p2_pizzeria;
-- Ejercicio 1
use uf2_p2_pizzeria;
SELECT cli.nom
FROM comanda AS anda
INNER JOIN client AS cli ON anda.client_id = cli.id_client
    WHERE anda.numero = '10002';
   
-- Ejercicio 2
SELECT emp.nom
FROM comanda AS anda
INNER JOIN empleat AS emp ON anda.empleat_id = emp.id_empleat
    WHERE anda.numero = '10000';
   
-- Ejercicio 3
SELECT anda.numero, anda.domicili_local
FROM comanda AS andal
INNER JOIN client AS cli ON anda.client_id = cli.id_client
    WHERE cli.nom = "Josep Vila";
   
-- Ejercicio 4
SELECT anda.numero, cli.nom
FROM comanda AS anda
INNER JOIN client AS cli ON anda.client_id = cli.id_client
    WHERE anda.domicili_local = "L";
   
-- Ejercicio 5
SELECT emp.nom
FROM comanda AS anda
INNER JOIN empleat AS emp ON anda.empleat_id = emp.id_empleat
    INNER JOIN client AS cli ON anda.client_id = cli.id_client
    WHERE cli.nom = "Carme Garcia";

-- Ejercicio 6
SELECT anda.data_hora
FROM comanda AS anda
INNER JOIN empleat AS emp ON anda.empleat_id = emp.id_empleat
    WHERE emp.nom = "Marta";

-- Ejercicio 7
SELECT anda.domicili_local
FROM comanda AS anda
    WHERE anda.domicili_local = "D";

-- Ejercicio 8
SELECT anda.numero
FROM comanda AS anda
INNER JOIN comanda_producte AS anda_pro ON anda.numero = anda_pro.numero
    INNER JOIN producte  AS pro ON anda_pro.id_producte = pro.id_producte
    WHERE pro.nom = "Pizza 4 estacions";
   
-- Ejercicio 9
SELECT sum(anda_pro.quantitat)
FROM comanda_producte AS anda_pro
INNER JOIN beguda AS beg ON anda_pro.id_producte = beg.id_producte
    INNER JOIN producte  AS pro ON anda_pro.id_producte = pro.id_producte
    WHERE pro.nom = "Ampolla Coca-Cola";

-- Ejercicio 10
SELECT ing.nom
FROM ingredient AS ing
INNER JOIN pizza_ingredient AS piz_ing ON ing.id_ingredient = piz_ing.id_ingredient
    INNER JOIN producte AS pro ON piz_ing.id_producte = pro.id_producte
    WHERE pro.nom = "Pizza Barbacoa";

-- Ejercicio 11
SELECT pro.nom, pro.preu
FROM producte AS pro
INNER JOIN beguda AS beg ON pro.id_producte = beg.id_producte;

-- Ejercicio 12
SELECT pro.nom
FROM producte AS pro
INNER JOIN pizza_ingredient AS piz_ing ON pro.id_producte = piz_ing.id_producte
    INNER JOIN ingredient AS ing ON piz_ing.id_ingredient = ing.id_ingredient
    WHERE ing.nom = "pinya";
   
-- Ejercicio 13
SELECT ing.nom
FROM ingredient AS ing
    INNER JOIN pizza_ingredient AS piz_ing ON ing.id_ingredient = piz_ing.id_ingredient
    INNER JOIN producte AS pro ON piz_ing.id_producte = pro.id_producte
    WHERE pro.nom = "Pizza 4 estacions";

-- Ejercicio 14
SELECT  COUNT(pro.nom)
FROM producte AS pro
INNER JOIN  beguda AS  beg ON pro.id_producte = beg.id_producte
    WHERE beg.alcoholica = "N";

-- Ejercicio 15
SELECT sum(pro.preu)
FROM producte AS pro
INNER JOIN comanda_producte AS anda_pro ON pro.id_producte = anda_pro.id_producte
    INNER JOIN comanda AS anda ON anda_pro.numero = anda.numero
    WHERE anda.numero = "10005";

-- Ejercicio 16
SELECT pro.nom
FROM pizza AS piz
INNER JOIN producte AS pro ON piz.id_producte = pro.id_producte
INNER JOIN comanda_producte AS anda_pro ON pro.id_producte = anda_pro.id_producte
    INNER JOIN comanda AS anda ON anda_pro.numero = anda.numero
    INNER JOIN client AS cli ON anda.client_id = cli.id_client
    WHERE cli.poblacio <> "Terrassa";

-- Ejercicio 17
SELECT COUNT(pro.nom)
FROM pizza AS piz
INNER JOIN producte AS pro ON piz.id_producte = pro.id_producte;

-- Ejercicio 18
SELECT pro.nom
FROM postre AS pos
INNER JOIN producte AS pro ON pos.id_producte = pro.id_producte
    INNER JOIN comanda_producte AS anda_pro ON pro.id_producte = anda_pro.id_producte
    INNER JOIN comanda AS anda ON anda_pro.numero = anda.numero
    INNER JOIN client AS cli ON anda.client_id = cli.id_client
    WHERE cli.nom = "Júlia Guillén";

-- Ejercicio 19
SELECT cli.nom
FROM beguda AS beg
INNER JOIN producte AS pro ON beg.id_producte = pro.id_producte
INNER JOIN comanda_producte AS anda_pro ON pro.id_producte = anda_pro.id_producte
    INNER JOIN comanda AS anda ON anda_pro.numero = anda.numero
    INNER JOIN client AS cli ON anda.client_id = cli.id_client
    WHERE anda_pro.quantitat > 4;
   
-- Ejercicio 20
SELECT pro.nom
FROM ingredient AS ing
INNER JOIN pizza_ingredient AS piz_ing ON ing.id_ingredient = piz_ing.id_ingredient
    INNER JOIN pizza AS piz ON piz_ing.id_producte = piz.id_producte
    INNER JOIN producte AS pro ON piz.id_producte = pro.id_producte
    WHERE ing.nom = "bacon";

-- Ejercicio 21
SELECT sum(anda_pro.quantitat)
FROM beguda AS beg
INNER JOIN producte AS pro ON beg.id_producte = pro.id_producte
    INNER JOIN comanda_producte AS anda_pro ON pro.id_producte = anda_pro.id_producte
    WHERE pro.nom = "Ampolla Coca-Cola";
   
-- Ejercicio 22
SELECT cli.nom
FROM client AS cli
INNER JOIN comanda AS anda ON cli.id_client = anda.client_id
    INNER JOIN comanda_producte  AS anda_pro ON anda.numero = anda_pro.numero
    INNER JOIN producte  AS pro ON anda_pro.id_producte = pro.id_producte
    WHERE (pro.nom = "Pizza barbacoa") AND (anda.domicili_local = "L");
   
-- Ejercicio 23
SELECT pro.nom
FROM pizza AS piz
INNER JOIN producte AS pro ON piz.id_producte = pro.id_producte
INNER JOIN comanda_producte AS anda_pro ON pro.id_producte = anda_pro.id_producte
    INNER JOIN comanda AS anda ON anda_pro.numero = anda.numero
    WHERE anda_pro.quantitat >= 2;
   
-- Ejercicio 24
SELECT anda.numero
FROM comanda AS anda
INNER JOIN comanda_producte AS anda_pro ON anda.numero = anda_pro.numero
    INNER JOIN producte AS pro ON anda_pro.id_producte = pro.id_producte
    INNER JOIN beguda AS beg ON pro.id_producte = beg.id_producte
    WHERE beg.alcoholica = 'S';
    