use uf2_p2_pizzeria;
SELECT cli.nom, cli.adreca, cli.poblacio
FROM client AS cli
ORDER BY poblacio;
   
-- Ejercicio 2
SELECT *
FROM empleat AS emp
ORDER BY nom, cognoms;

-- Ejercicio 3
SELECT *
FROM producte AS pro
ORDER BY preu DESC;
   
-- Ejercicio 4
SELECT pro.nom, pro.preu
FROM beguda AS beg
INNER JOIN producte AS pro ON beg.id_producte = pro.id_producte
    ORDER BY pro.preu DESC, pro.nom;
   
-- Ejercicio 5  
SELECT pro.nom, ing.nom
FROM ingredient AS ing
INNER JOIN pizza_ingredient AS piz_ing ON ing.id_ingredient = piz_ing.id_ingredient
    INNER JOIN pizza AS piz ON piz_ing.id_producte = piz.id_producte
    INNER JOIN producte AS pro ON piz.id_producte = pro.id_producte
    ORDER BY pro.nom DESC, ing.nom;

-- Ejercicio 6
SELECT ing.nom
FROM ingredient AS ing
INNER JOIN pizza_ingredient AS piz_ing ON ing.id_ingredient = piz_ing.id_ingredient
    INNER JOIN pizza AS piz ON piz_ing.id_producte = piz.id_producte
    INNER JOIN producte AS pro ON piz.id_producte = pro.id_producte
    WHERE pro.nom = "Pizza Ibèrica"
     ORDER BY ing.nom DESC;
   
-- Ejercicio 7
SELECT pro.nom
FROM ingredient AS ing
INNER JOIN pizza_ingredient AS piz_ing ON ing.id_ingredient = piz_ing.id_ingredient
    INNER JOIN pizza AS piz ON piz_ing.id_producte = piz.id_producte
    INNER JOIN producte AS pro ON piz.id_producte = pro.id_producte
    WHERE ing.nom IN ("Pinya", "Mozzarella")
    ORDER BY pro.nom DESC;
   
-- Ejercicio 8
SELECT pro.nom, pro.preu
FROM postre AS pos
INNER JOIN producte AS pro ON pos.id_producte = pro.id_producte
    INNER JOIN comanda_producte AS anda_pro ON pro.id_producte = anda_pro.id_producte
    INNER JOIN comanda AS anda ON anda_pro.numero = anda.numero
    INNER JOIN client AS cli ON anda.client_id = cli.id_client
    WHERE cli.nom = "Guillem Jam"
    ORDER BY pro.preu;