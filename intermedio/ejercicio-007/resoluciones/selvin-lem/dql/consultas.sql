USE campuslands_mysql;

-- 1. Convocatoria completa de un partido, con datos del jugador via JOIN
SELECT p.rival, j.nombre_jugador, j.posicion, c.minutos_jugados, c.goles_partido
FROM liga_convocatorias c
INNER JOIN liga_jugadores_2fn j ON c.id_jugador = j.id_jugador
INNER JOIN liga_partidos_2fn p ON c.id_partido = p.id_partido
WHERE p.id_partido = 1;

-- 2. Total de goles por jugador, sumando todos los partidos
SELECT j.nombre_jugador, SUM(c.goles_partido) AS goles_totales
FROM liga_convocatorias c
INNER JOIN liga_jugadores_2fn j ON c.id_jugador = j.id_jugador
GROUP BY j.nombre_jugador
ORDER BY goles_totales DESC;

-- 3. Jugadores convocados a mas de un partido
SELECT j.nombre_jugador, COUNT(c.id_partido) AS partidos_convocado
FROM liga_convocatorias c
INNER JOIN liga_jugadores_2fn j ON c.id_jugador = j.id_jugador
GROUP BY j.nombre_jugador
HAVING partidos_convocado > 1;

-- 4. Cambiar la posicion de un jugador (demuestra que el dato no se repite en cada convocatoria)
UPDATE liga_jugadores_2fn SET posicion = 'mediocampo' WHERE nombre_jugador = 'Serath';

-- 5. Convocatorias donde el jugador no sumo minutos (caso limite: suplente sin entrar)
SELECT j.nombre_jugador, p.rival, c.minutos_jugados
FROM liga_convocatorias c
INNER JOIN liga_jugadores_2fn j ON c.id_jugador = j.id_jugador
INNER JOIN liga_partidos_2fn p ON c.id_partido = p.id_partido
WHERE c.minutos_jugados = 0;