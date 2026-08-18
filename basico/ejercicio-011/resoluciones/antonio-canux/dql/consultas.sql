-- Consultas base e indicadores aplicando validaciones logicas.
USE campuslands_mysql;

SELECT jugador_local, puntos_local, puntos_visitante, jugador_visitante, modalidad 
    FROM basico_ejercicio_011_partidos;

SELECT modalidad, COUNT(id) AS total_partidos 
    FROM basico_ejercicio_011_partidos 
    GROUP BY modalidad;

SELECT jugador_local, puntos_local, puntos_visitante, jugador_visitante, ABS(puntos_local - puntos_visitante) AS diferencia_puntos 
    FROM basico_ejercicio_011_partidos 
    WHERE ABS(puntos_local - puntos_visitante) >= 5;

SELECT id, jugador_local, jugador_visitante, (puntos_local + puntos_visitante) AS total_puntos_partido 
    FROM basico_ejercicio_011_partidos 
    ORDER BY total_puntos_partido DESC;

SELECT jugador_local, puntos_local, puntos_visitante, jugador_visitante 
    FROM basico_ejercicio_011_partidos 
    WHERE puntos_local >= 10 AND puntos_visitante >= 10;