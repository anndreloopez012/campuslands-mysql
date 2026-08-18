-- Verificar los privilegios de los roles
SHOW GRANTS FOR 'rol_admin_futsal';
SHOW GRANTS FOR 'rol_consulta_futsal';

-- Verificar los roles asignados a los usuarios
SHOW GRANTS FOR 'admin_futsal'@'localhost';
SHOW GRANTS FOR 'consulta_futsal'@'localhost';

-- Consultar los equipos y jugadores
SELECT
    e.nombre_equipo,
    e.ciudad,
    j.nombre_jugador,
    j.posicion,
    j.goles
FROM equipos_futsal e
INNER JOIN jugadores_futsal j
    ON e.equipo_id = j.equipo_id
ORDER BY j.goles DESC;

-- Consultar los jugadores con mayor cantidad de goles
SELECT
    nombre_jugador,
    posicion,
    goles
FROM jugadores_futsal
WHERE goles >= 15
ORDER BY goles DESC;

-- Consultar la cantidad de jugadores por posición
SELECT
    posicion,
    COUNT(*) AS cantidad_jugadores
FROM jugadores_futsal
GROUP BY posicion
ORDER BY cantidad_jugadores DESC;

-- Consultar los equipos de una ciudad específica
SELECT
    nombre_equipo,
    ciudad,
    estadio
FROM equipos_futsal
WHERE ciudad = 'Bogota';