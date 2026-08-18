USE ejercicio_11;

SELECT *
FROM jugadores;

SELECT *
FROM jugadores
WHERE edad < 12 OR edad > 60;

SELECT 
id_jugador,
nombre,
nickname,
ranking_actual
FROM jugadores
WHERE activo = TRUE;

SELECT
    nickname,
    nacionalidad,
    ranking_actual
FROM jugadores
ORDER BY ranking_actual ASC;

SELECT
    nombre,
    categoria,
    fecha_inicio,
    fecha_fin,
    premio
FROM torneos
WHERE categoria = 'Profesional';

SELECT
    p.id_partido,
    t.nombre AS torneo,
    jl.nickname AS jugador_local,
    jv.nickname AS jugador_visitante,
    p.sets_local,
    p.sets_visitante
FROM partidos p
INNER JOIN torneos t
    ON p.id_torneo = t.id_torneo
INNER JOIN jugadores jl
    ON p.jugador_local = jl.id_jugador
INNER JOIN jugadores jv
    ON p.jugador_visitante = jv.id_jugador;
    
SELECT
    p.id_partido,
    jl.nickname AS jugador_local,
    jv.nickname AS jugador_visitante,
    p.sets_local,
    p.sets_visitante
FROM partidos p
INNER JOIN jugadores jl
    ON p.jugador_local = jl.id_jugador
INNER JOIN jugadores jv
    ON p.jugador_visitante = jv.id_jugador
WHERE p.ganador = p.jugador_local;
    
SELECT
    p.id_partido,
    jl.nickname AS jugador_local,
    jv.nickname AS jugador_visitante,
    p.sets_local,
    p.sets_visitante
FROM partidos p
INNER JOIN jugadores jl
    ON p.jugador_local = jl.id_jugador
INNER JOIN jugadores jv
    ON p.jugador_visitante = jv.id_jugador
WHERE p.ganador = p.jugador_visitante;

SELECT *
FROM partidos
WHERE jugador_local = jugador_visitante;

SELECT
    AVG(premio) AS premio_promedio
FROM torneos;


