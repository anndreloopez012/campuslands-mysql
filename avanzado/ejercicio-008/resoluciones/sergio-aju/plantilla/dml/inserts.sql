-- Carga de datos para el módulo de fútbol sala.
USE campuslands_mysql;

INSERT INTO ejercicio_008_futbol_sala (jugador, equipo, posicion, goles_anotados, asistencias, tarjetas_amarillas, estado) VALUES
('Ricardinho', 'Inter FS', 'ala', 18, 22, 1, 'activo'),
('Falcão', 'Carlos Barbosa', 'ala', 25, 15, 0, 'activo'),
('Ferrao', 'Barça Futsal', 'pivot', 21, 8, 3, 'activo'),
('Pito', 'Barça Futsal', 'pivot', 16, 14, 2, 'activo'),
('Guitta', 'Sporting CP', 'portero', 1, 5, 0, 'activo'),
('Ortiz', 'Inter FS', 'cierre', 4, 12, 4, 'suspendido'),
('Lenísio', 'ElPozo Murcia', 'pivot', 19, 6, 1, 'lesionado'),
('Mikael', 'Palma Futsal', 'ala', 12, 10, 2, 'activo'),
('Toledo', 'Levante UD', 'cierre', 5, 7, 5, 'suspendido'),
('Marcenio', 'Barça Futsal', 'ala', 8, 13, 1, 'activo');