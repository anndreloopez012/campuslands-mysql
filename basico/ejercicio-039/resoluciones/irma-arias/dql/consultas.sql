USE db_kickboxing;

-- Consulta 1: Listar luchadores activos ordenados por sus victorias de mayor a menor
SELECT id, nombre_luchador, categoria_peso, peleas_ganadas, peleas_perdidas, peso_kg, fecha_inscripcion 
FROM luchadores_kickboxing 
WHERE estado = 'activo' 
ORDER BY peleas_ganadas DESC;

-- Consulta 2: Resumen agrupado por categoría de peso, mostrando cantidad de luchadores y promedio de peso
SELECT categoria_peso, COUNT(*) AS total_luchadores, AVG(peso_kg) AS peso_promedio
FROM luchadores_kickboxing
GROUP BY categoria_peso;

-- Consulta 3: Top 3 de luchadores con mayor cantidad de victorias (Ranking de efectividad)
SELECT nombre_luchador, categoria_peso, peleas_ganadas, peleas_perdidas, estado
FROM luchadores_kickboxing
ORDER BY peleas_ganadas DESC
LIMIT 3;

-- Consulta 4: Filtrar luchadores activos que tengan 10 o más victorias y menos de 3 derrotas
SELECT nombre_luchador, categoria_peso, peleas_ganadas, peleas_perdidas, peso_kg
FROM luchadores_kickboxing
WHERE estado = 'activo' AND peleas_ganadas >= 10 AND peleas_perdidas < 3;

-- Consulta 5: Conteo y total acumulado de victorias agrupado por el estado actual de los luchadores
SELECT estado, COUNT(*) AS cantidad_luchadores, SUM(peleas_ganadas) AS total_victorias_estado
FROM luchadores_kickboxing
GROUP BY estado;