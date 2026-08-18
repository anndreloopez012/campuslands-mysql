SELECT *
FROM motos;

SELECT
marca,
modelo,
precio
FROM motos
ORDER BY precio DESC;

SELECT
marca,
modelo,
estado
FROM motos
WHERE estado='Disponible';

SELECT
AVG(precio) AS precio_promedio
FROM motos;

SELECT
estado,
COUNT(*) AS total_motos
FROM motos
GROUP BY estado;