
USE campuslands_mysql;

-- 1. Mostrar todos los jugadores registrados
SELECT
    nombre,
    pais,
    ranking,
    estado
FROM jugadores_pingpong;

-- 2. Mostrar jugadores activos
SELECT
    nombre,
    ranking
FROM jugadores_pingpong
WHERE estado = 'Activo';

-- 3. Mostrar jugadores mayores de 20 años
SELECT
    nombre,
    edad
FROM jugadores_pingpong
WHERE edad > 20;

-- 4. Mostrar jugadores con más de 25 victorias
SELECT
    nombre,
    victorias
FROM jugadores_pingpong
WHERE victorias > 25;

-- 5. Mostrar jugadores ordenados por ranking
SELECT
    ranking AS Ranking,
    nombre AS Jugador
FROM jugadores_pingpong
ORDER BY ranking ASC;

-- 6. Contar jugadores por estado
SELECT
    estado AS Estado,
    COUNT(*) AS Total
FROM jugadores_pingpong
GROUP BY estado;