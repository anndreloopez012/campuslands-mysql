-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT * FROM autos_hiperdeportivos;

SELECT marca Maraca_Hiperdeportivo, potencia 
    FROM autos_hiperdeportivos
    WHERE potencia > 1000
    GROUP BY marca, potencia;

SELECT id, marca Maraca_hiperdeportivo, modelo
    FROM autos_hiperdeportivos
    WHERE modelo ='Venom F5'
    GROUP BY id, marca, modelo;

SELECT marca
    FROM autos_hiperdeportivos
    WHERE modelo ='P1' AND potencia > 500
    GROUP BY marca, modelo, potencia;

