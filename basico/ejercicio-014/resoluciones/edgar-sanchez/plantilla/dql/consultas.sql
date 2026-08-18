
SELECT 
    titulo_obra,
    tipo_obra,
    fecha_publicacion
FROM lanzamientos_saga
WHERE YEAR(fecha_publicacion) < 2000
ORDER BY fecha_publicacion ASC;

SELECT 
    titulo_obra,
    fecha_publicacion,
    DATEDIFF('2026-07-29', fecha_publicacion) AS dias_desde_estreno
FROM lanzamientos_saga
WHERE estado_canon = 'Canon'
ORDER BY fecha_publicacion DESC;

SELECT 
    titulo_obra,
    tipo_obra,
    fecha_publicacion
FROM lanzamientos_saga
WHERE fecha_publicacion BETWEEN '1990-01-01' AND '2010-12-31';

SELECT 
    YEAR(fecha_publicacion) AS anio_lanzamiento,
    COUNT(lanzamiento_id) AS total_obras
FROM lanzamientos_saga
GROUP BY YEAR(fecha_publicacion)
ORDER BY anio_lanzamiento ASC;