-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT nombre_jugador FROM futbol_sala;

UPDATE futbol_sala
    SET posicion ='Pivot', dorsal = 99
    WHERE nombre_jugador= 'Bruno Silva';
