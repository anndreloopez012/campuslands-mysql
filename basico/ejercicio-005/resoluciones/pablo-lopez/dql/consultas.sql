SELECT *
FROM reparaciones;

SELECT
cliente,
moto,
servicio,
estado
FROM reparaciones
WHERE estado='Finalizado';

SELECT
cliente,
servicio,
costo
FROM reparaciones
ORDER BY costo DESC;

SELECT
AVG(costo) AS costo_promedio
FROM reparaciones;

SELECT
estado,
COUNT(*) AS total_reparaciones
FROM reparaciones
GROUP BY estado;