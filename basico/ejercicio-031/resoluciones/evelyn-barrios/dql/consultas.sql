-- dql/consultas.sql
-- Consultas para analizar los datos del torneo MOBA.

USE moba_tournament;

-- 1. Reporte de victorias por equipo.
-- Muestra qué equipos son los más dominantes.
SELECT 
    e.nombre_equipo,
    COUNT(p.ganador_id) AS total_victorias
FROM equipos e
JOIN partidas p ON e.id = p.ganador_id
GROUP BY e.nombre_equipo
ORDER BY total_victorias DESC;

-- 2. Duración promedio de las partidas por fase del torneo.
-- Ayuda a entender cómo cambia el ritmo del juego.
SELECT 
    fase_torneo,
    AVG(duracion_minutos) AS duracion_promedio_min
FROM partidas
GROUP BY fase_torneo;

-- 3. Historial de enfrentamientos entre dos equipos específicos.
SELECT 
    p.fecha_partida,
    er.nombre_equipo AS equipo_rojo,
    ea.nombre_equipo AS equipo_azul,
    g.nombre_equipo AS ganador
FROM partidas p
JOIN equipos er ON p.equipo_rojo_id = er.id
JOIN equipos ea ON p.equipo_azul_id = ea.id
JOIN equipos g ON p.ganador_id = g.id
WHERE (er.nombre_equipo = 'Thunder Dragons' AND ea.nombre_equipo = 'Crimson Phoenix')
   OR (er.nombre_equipo = 'Crimson Phoenix' AND ea.nombre_equipo = 'Thunder Dragons');

-- 4. Partida más larga del torneo.
SELECT 
    er.nombre_equipo AS equipo_rojo,
    ea.nombre_equipo AS equipo_azul,
    duracion_minutos
FROM partidas p
JOIN equipos er ON p.equipo_rojo_id = er.id
JOIN equipos ea ON p.equipo_azul_id = ea.id
ORDER BY duracion_minutos DESC
LIMIT 1;

-- 5. Conteo de partidas jugadas por cada equipo.
SELECT e.nombre_equipo, COUNT(p.id) AS partidas_jugadas
FROM equipos e
JOIN partidas p ON e.id = p.equipo_rojo_id OR e.id = p.equipo_azul_id
GROUP BY e.nombre_equipo;