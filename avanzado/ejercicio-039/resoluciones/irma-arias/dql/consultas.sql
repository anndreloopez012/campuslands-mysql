-- DQL: Consultas analíticas y de reportes para kickboxing
USE db_kickboxing;

-- 1. Listado completo de peleadores vigentes ordenados de mayor a menor cantidad de victorias
SELECT codigo_peleador, nombre_completo, categoria_peso, peleas_ganadas, peleas_perdidas, estado_peleador
FROM peleadores_kickboxing
ORDER BY peleas_ganadas DESC;

-- 2. Filtrar peleadores que se encuentran con estado 'activo' ordenados por categoría de peso
SELECT codigo_peleador, nombre_completo, categoria_peso, peleas_ganadas, peleas_perdidas, estado_peleador
FROM peleadores_kickboxing
WHERE estado_peleador = 'activo'
ORDER BY categoria_peso ASC;

-- 3. Agrupar por estado del peleador para analizar la cantidad de atletas y el promedio de victorias por categoría
SELECT estado_peleador, COUNT(*) AS total_peleadores, MAX(peleas_ganadas) AS max_victorias, ROUND(AVG(peleas_ganadas), 2) AS promedio_victorias
FROM peleadores_kickboxing
GROUP BY estado_peleador
ORDER BY total_peleadores DESC;

-- 4. Ranking TOP 3 de los peleadores con mayor cantidad de victorias en la base de datos
SELECT codigo_peleador, nombre_completo, categoria_peso, peleas_ganadas, peleas_perdidas, estado_peleador
FROM peleadores_kickboxing
ORDER BY peleas_ganadas DESC
LIMIT 3;

-- 5. Resumen global de la liga de kickboxing (Suma total de victorias acumuladas y promedio general de derrotas)
SELECT SUM(peleas_ganadas) AS total_victorias_liga, ROUND(AVG(peleas_perdidas), 2) AS promedio_derrotas
FROM peleadores_kickboxing;