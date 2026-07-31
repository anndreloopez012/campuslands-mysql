USE db_videojuego_rpg;

-- Consulta 1: Listar todos los personajes ordenados por nivel de mayor a menor (Ranking de poder)
SELECT id, nombre_personaje, clase_rpg, nivel, puntos_vida, experiencia_acumulada, estado
FROM personajes_rpg
ORDER BY nivel DESC;

-- Consulta 2: Resumen agrupado por clase RPG, mostrando el total de personajes por clase y su nivel promedio
SELECT clase_rpg, COUNT(*) AS total_personajes, ROUND(AVG(nivel), 1) AS nivel_promedio
FROM personajes_rpg
GROUP BY clase_rpg
ORDER BY nivel_promedio DESC;

-- Consulta 3: Top 3 de personajes con mayor experiencia acumulada (Los más veteranos del reino)
SELECT nombre_personaje, clase_rpg, nivel, experiencia_acumulada, estado
FROM personajes_rpg
ORDER BY experiencia_acumulada DESC
LIMIT 3;

-- Consulta 4: Filtrar personajes activos o en combate cuyo nivel sea mayor o igual a 75
SELECT nombre_personaje, clase_rpg, nivel, puntos_vida, estado
FROM personajes_rpg
WHERE estado IN ('activo', 'en_combate') AND nivel >= 75
ORDER BY nivel ASC;

-- Consulta 5: Resumen global evaluando el total de personajes registrados, la experiencia máxima alcanzada y los puntos de vida promedio
SELECT COUNT(*) AS total_heroes, MAX(experiencia_acumulada) AS max_experiencia, ROUND(AVG(puntos_vida), 1) AS promedio_vida
FROM personajes_rpg;