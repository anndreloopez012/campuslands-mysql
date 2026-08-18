-- Carga de datos para la liga de fútbol.
USE campuslands_mysql;

INSERT INTO ejercicio_007_liga_futbol (equipo, partidos_jugados, partidos_ganados, partidos_empatados, partidos_perdidos, goles_favor, goles_contra, estado) VALUES
('Real Madrid', 18, 14, 3, 1, 42, 15, 'activo'),
('FC Barcelona', 18, 13, 4, 1, 39, 16, 'activo'),
('Atlético de Madrid', 18, 11, 5, 2, 31, 14, 'activo'),
('Real Sociedad', 18, 9, 4, 5, 28, 20, 'activo'),
('Athletic Club', 18, 8, 5, 5, 26, 21, 'activo'),
('Real Betis', 18, 7, 6, 5, 24, 25, 'activo'),
('Valencia CF', 18, 6, 4, 8, 20, 26, 'activo'),
('Villarreal CF', 18, 5, 5, 8, 22, 30, 'activo'),
('Sevilla FC', 18, 3, 4, 11, 18, 35, 'sancionado'),
('Granada CF', 18, 1, 2, 15, 11, 49, 'descendido');