INSERT INTO equipos_sala (id_equipo, nombre_equipo, ciudad, puntos, partidos_jugados, goles_favor) VALUES
(1, 'Inter FS', 'Madrid', 12, 4, 18),
(2, 'ElPozo Murcia', 'Murcia', 10, 4, 15),
(3, 'Barça Futsal', 'Barcelona', 9, 4, 16),
(4, 'Palma Futsal', 'Palma de Mallorca', 7, 4, 12);

INSERT INTO jugadores (id_jugador, id_equipo, nombre, posicion, goles_anotados, tarjetas_amarillas) VALUES
(1, 1, 'Pito', 'Pivot', 6, 1),
(2, 1, 'Erice', 'Cierre', 2, 3),
(3, 2, 'Marcel', 'Ala', 5, 0),
(4, 2, 'Juanjo', 'Portero', 0, 1),
(5, 3, 'Adolfo', 'Ala', 7, 2),
(6, 3, 'Ferraut', 'Pivot', 4, 1),
(7, 4, 'Moyan', 'Ala', 3, 2);

INSERT INTO estadisticas_partido_jugador (id_jugador, jornada, minutos_jugados) VALUES
(1, 1, 35),
(1, 2, 40),
(3, 1, 38),
(5, 1, 36),
(5, 2, 39);