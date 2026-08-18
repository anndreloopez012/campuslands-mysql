-- funcionalidades/ejercicio-003 - maria-montepeque
USE campuslands_mysql;

-- 1. Listado de partidas jugadas con el nombre real de cada jugador (la FK conecta datos validos)
SELECT
    p.id AS partida_id,
    jl.alias AS local,
    jv.alias AS visitante,
    p.sets_local,
    p.sets_visitante,
    p.estado,
    p.fecha_partida
FROM partidas_pingpong p
    INNER JOIN jugadores_pingpong jl ON jl.id = p.jugador_local_id
    INNER JOIN jugadores_pingpong jv ON jv.id = p.jugador_visitante_id
ORDER BY p.fecha_partida;

-- 2. Ranking de jugadores ordenado por puntos (DEFAULT 1000 aplica cuando no se indica ranking)
SELECT
    alias,
    club,
    ranking_puntos
FROM jugadores_pingpong
ORDER BY ranking_puntos DESC;

-- === Pruebas de restricciones: cada sentencia siguiente debe FALLAR ===
-- Ejecutar una por una; MySQL detiene el archivo en el primer error si no se usa --force.

-- 3. UNIQUE: alias repetido ("SpinMaster" ya existe)
INSERT INTO jugadores_pingpong (alias, nombre_completo)
VALUES ('SpinMaster', 'Otro Jugador Cualquiera');

-- 4. NOT NULL: nombre_completo obligatorio
INSERT INTO jugadores_pingpong (alias, nombre_completo)
VALUES ('NuevoAlias', NULL);

-- 5. CHECK: un set no puede superar 3 (mejor de 5 juegos)
INSERT INTO partidas_pingpong (jugador_local_id, jugador_visitante_id, sets_local, sets_visitante, sede, fecha_partida)
VALUES (1, 2, 5, 1, 'Cancha de prueba', '2026-08-01');

-- 6. FOREIGN KEY: no existe el jugador con id 999
INSERT INTO partidas_pingpong (jugador_local_id, jugador_visitante_id, sede, fecha_partida)
VALUES (999, 2, 'Cancha de prueba', '2026-08-01');

-- 7. CHECK: un jugador no puede enfrentarse a si mismo
INSERT INTO partidas_pingpong (jugador_local_id, jugador_visitante_id, sede, fecha_partida)
VALUES (1, 1, 'Cancha de prueba', '2026-08-01');
