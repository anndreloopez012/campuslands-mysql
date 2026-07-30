USE db_rpg_campus;

-- Consulta 1: Listar todos los personajes activos ordenados por nivel de mayor a menor
SELECT id, nombre, clase, nivel, puntos_vida 
FROM personajes 
WHERE estado = 'activo' 
ORDER BY nivel DESC;

-- Consulta 2: Calcular el promedio de puntos de vida y nivel agrupados por clase
SELECT clase, COUNT(*) AS total_personajes, AVG(nivel) AS promedio_nivel, AVG(puntos_vida) AS promedio_vida
FROM personajes
GROUP BY clase;

-- Consulta 3: Top 3 de personajes con mayor experiencia acumulada
SELECT nombre, clase, experiencia, estado
FROM personajes
ORDER BY experiencia DESC
LIMIT 3;

-- Consulta 4: Filtrar personajes que superan el nivel 10 y tienen estado activo
SELECT nombre, clase, nivel, experiencia
FROM personajes
WHERE nivel > 10 AND estado = 'activo';

-- Consulta 5: Resumen de personajes agrupados por su estado actual
SELECT estado, COUNT(*) AS cantidad_total, MAX(nivel) AS nivel_maximo
FROM personajes
GROUP BY estado;