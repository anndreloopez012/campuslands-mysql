-- basico/ejercicio-007 - evelyn-barrios
-- Inserción de datos en la tabla de posiciones de la liga de fútbol
USE campuslands_mysql;

INSERT INTO tabla_posiciones (nombre_equipo, puntos, partidos_jugados, victorias, empates, derrotas, goles_favor, goles_contra) VALUES
('Titanes FC', 38, 18, 11, 5, 2, 35, 15),
('Deportivo Halcones', 35, 18, 10, 5, 3, 28, 12),
('Estrellas del Norte', 32, 18, 9, 5, 4, 31, 20),
('Unión Capitalina', 29, 18, 8, 5, 5, 25, 22),
('Guerreros del Sur', 25, 18, 7, 4, 7, 22, 24),
('CF Fenix', 20, 18, 5, 5, 8, 18, 26),
('Leones de la Montaña', 18, 18, 4, 6, 8, 15, 29),
('Atlético del Valle', 15, 18, 3, 6, 9, 14, 30),
('Real Cóndores', 12, 18, 2, 6, 10, 10, 28),
('Lobos del Desierto', 10, 18, 1, 7, 10, 12, 34);