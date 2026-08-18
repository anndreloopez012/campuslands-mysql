-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Jugadores (nombre, ranking_nacional, mano_dominante) VALUES
('Ma Long', 1, 'Diestro'),
('Fan Zhendong', 2, 'Diestro'),
('Timo Boll', 3, 'Zurdo'),
('Tomokazu Harimoto', 4, 'Diestro'),
('Hugo Calderano', 5, 'Diestro');

INSERT INTO Partidos (jugador1_id, jugador2_id, ganador_id, sets_jugador1, sets_jugador2) VALUES
(1, 2, 1, 3, 2),
(3, 4, 3, 3, 1),
(5, 1, 1, 0, 3),
(2, 3, 2, 3, 0),
(4, 5, 5, 1, 3);