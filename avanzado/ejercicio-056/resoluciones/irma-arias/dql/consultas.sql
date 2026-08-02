USE videojuego_rpg_db;

-- 1. Filtrar personajes activos con nivel mayor o igual a 45 ordenados por experiencia
SELECT nombre, clase, nivel, experiencia, oro
FROM personajes_rpg
WHERE estado = 'activo' AND nivel >= 45
ORDER BY experiencia DESC;

-- 2. Conteo de personajes y promedio de oro agrupados por clase
SELECT clase, COUNT(*) AS total_personajes, AVG(oro) AS oro_promedio
FROM personajes_rpg
GROUP BY clase
ORDER BY oro_promedio DESC;

-- 3. Ranking TOP 3 de los personajes más ricos en oro
SELECT nombre, clase, nivel, oro, estado
FROM personajes_rpg
ORDER BY oro DESC
LIMIT 3;

-- 4. Filtrar personajes con puntos de vida mayores a 1000 y que no estén derrotados
SELECT nombre, clase, puntos_vida, estado
FROM personajes_rpg
WHERE puntos_vida > 1000 AND estado != 'derrotado'
ORDER BY puntos_vida DESC;

-- 5. Conteo y suma total de oro acumulado según el estado actual de los personajes
SELECT estado, COUNT(*) AS cantidad_personajes, SUM(oro) AS oro_total_acumulado
FROM personajes_rpg
GROUP BY estado;
