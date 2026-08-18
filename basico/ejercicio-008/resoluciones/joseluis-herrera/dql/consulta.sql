UPDATE jugadores
SET goles_anotados = goles_anotados + 1
WHERE id_jugador = 5;

SELECT id_jugador, nombre, goles_anotados 
FROM jugadores 
WHERE id_jugador = 5;


UPDATE jugadores
SET tarjetas_amarillas = tarjetas_amarillas + 1
WHERE tarjetas_amarillas >= 2;

SELECT id_jugador, nombre, tarjetas_amarillas 
FROM jugadores;



UPDATE equipos_sala
SET puntos = puntos + 3,
    partidos_jugados = partidos_jugados + 1,
    goles_favor = goles_favor + 3
WHERE nombre_equipo = 'Inter FS';

SELECT nombre_equipo, puntos, partidos_jugados, goles_favor 
FROM equipos_sala 
WHERE nombre_equipo = 'Inter FS';