USE db_accion_aventura;

-- Consulta 1: Listar misiones disponibles ordenadas por su recompensa en oro de mayor a menor
SELECT id, titulo_mision, region, dificultad, recompensa_oro 
FROM misiones 
WHERE estado = 'disponible' 
ORDER BY recompensa_oro DESC;

-- Consulta 2: Resumen agrupado por dificultad mostrando el total de misiones y el promedio de oro
SELECT dificultad, COUNT(*) AS total_misiones, AVG(recompensa_oro) AS promedio_recompensa
FROM misiones
GROUP BY dificultad;

-- Consulta 3: Top 3 de misiones mejor pagadas sin importar su estado (Ranking)
SELECT titulo_mision, region, dificultad, recompensa_oro, estado
FROM misiones
ORDER BY recompensa_oro DESC
LIMIT 3;

-- Consulta 4: Filtrar misiones completadas que superan los 500 en oro de recompensa
SELECT titulo_mision, region, recompensa_oro, fecha_limite
FROM misiones
WHERE estado = 'completada' AND recompensa_oro > 500.00;

-- Consulta 5: Conteo de misiones agrupadas por su estado actual con la recompensa máxima alcanzada
SELECT estado, COUNT(*) AS cantidad_misiones, MAX(recompensa_oro) AS recompensa_maxima
FROM misiones
GROUP BY estado;