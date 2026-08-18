SELECT *
FROM autos_hiperdeportivos;

SELECT
marca,
modelo,
precio
FROM autos_hiperdeportivos
WHERE estado='Disponible';

SELECT
marca,
modelo,
velocidad_max
FROM autos_hiperdeportivos
WHERE velocidad_max > 400;

SELECT
marca,
modelo,
pais
FROM autos_hiperdeportivos
WHERE pais='Italia';

SELECT
marca,
modelo,
precio
FROM autos_hiperdeportivos
WHERE precio > 3000000;