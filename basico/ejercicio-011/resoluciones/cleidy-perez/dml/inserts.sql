-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;


INSERT INTO jugadores_pingpong (nombre, mano_habil, ranking_puntos, edad) VALUES
('Ma Long', 'Diestro', 2800, 35),
('Fan Zhendong', 'Diestro', 2750, 27),
('Timo Boll', 'Zurdo', 2100, 43),
('Hugo Calderano', 'Diestro', 1950, 28);

INSERT INTO partidos_pingpong (id_jugador1, id_jugador2, sets_jugador1, sets_jugador2) VALUES
(1, 2, 3, 2), 
(3, 4, 1, 3), 
(2, 3, 3, 0); 


