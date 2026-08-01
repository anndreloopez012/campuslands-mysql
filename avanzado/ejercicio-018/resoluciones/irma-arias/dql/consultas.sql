-- DQL: Consultas analíticas y reportes para paquetes turísticos
USE db_viajes_turismo;

-- 1. Listado general de paquetes turísticos ordenados por precio de mayor a menor
SELECT id, codigo_paquete, destino, continente, duracion_dias, precio_dolares, cupos_disponibles, estado
FROM paquetes_turisticos
ORDER BY precio_dolares DESC;

-- 2. Filtrar paquetes que se encuentran 'disponible' o 'ultimos_cupos' ordenados por menor precio
SELECT codigo_paquete, destino, continente, duracion_dias, precio_dolares, cupos_disponibles, estado
FROM paquetes_turisticos
WHERE estado IN ('disponible', 'ultimos_cupos')
ORDER BY precio_dolares ASC;

-- 3. Agrupar por continente para conocer la cantidad de destinos ofertados y el precio promedio del paquete
SELECT continente, COUNT(*) AS total_destinos, ROUND(AVG(precio_dolares), 2) AS precio_promedio_continente
FROM paquetes_turisticos
GROUP BY continente
ORDER BY precio_promedio_continente DESC;

-- 4. Top 3 de paquetes turísticos más costosos (Ranking de lujo)
SELECT codigo_paquete, destino, continente, duracion_dias, precio_dolares, estado
FROM paquetes_turisticos
ORDER BY precio_dolares DESC
LIMIT 3;

-- 5. Resumen financiero global de la agencia de turismo (Precio máximo, precio mínimo y costo promedio general)
SELECT MAX(precio_dolares) AS paquete_mas_exclusivo, MIN(precio_dolares) AS paquete_mas_economico, ROUND(AVG(precio_dolares), 2) AS costo_promedio_general
FROM paquetes_turisticos;