-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT * FROM hiperdeportivos;

SELECT marca, precio_usd
    FROM hiperdeportivos
    WHERE precio_usd > 2100000.00
    ORDER BY precio_usd DESC;


