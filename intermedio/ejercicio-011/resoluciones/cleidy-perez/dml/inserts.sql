-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

}INSERT INTO Jugadores (nombre, ranking_nacional, edad, mano_dominante) VALUES
('Ma Long', 1, 35, 'Diestro'),
('Fan Zhendong', 2, 27, 'Diestro'),
('Timo Boll', 3, 43, 'Zurdo'),
('Tomokazu Harimoto', 4, 21, 'Diestro'),
('Hugo Calderano', 5, 28, 'Diestro'),
('Lin Shidong', 6, 19, 'Diestro'),
('Dimitrij Ovtcharov', 7, 35, 'Diestro'),
('Truls Moregard', 8, 22, 'Diestro'),
('Dang Qiu', 9, 27, 'Diestro'),
('Jang Woojin', 10, 28, 'Diestro');

INSERT INTO Partidos (jugador1_id, jugador2_id, sets_jugador1, sets_jugador2, duracion_minutos) VALUES
(1, 2, 3, 2, 45),
(3, 4, 3, 1, 35),
(5, 6, 0, 3, 20),
(7, 8, 3, 2, 50),
(9, 10, 1, 3, 30),
(2, 3, 3, 0, 25),
(4, 5, 2, 3, 40),
(6, 7, 3, 1, 32),
(8, 9, 3, 0, 18),
(10, 1, 0, 3, 22);