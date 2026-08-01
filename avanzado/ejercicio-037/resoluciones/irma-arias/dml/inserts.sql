-- DML: Inserción de datos para liga de fútbol
USE db_liga_futbol;

INSERT INTO equipos_liga (codigo_equipo, nombre_equipo, partidos_jugados, puntos, goles_a_favor, goles_en_contra, estado_equipo) VALUES
('EQ-01', 'Real Madrid', 20, 52, 48, 15, 'activo'),
('EQ-02', 'FC Barcelona', 20, 49, 45, 18, 'activo'),
('EQ-03', 'Atletico de Madrid', 20, 42, 36, 20, 'activo'),
('EQ-04', 'Real Sociedad', 20, 35, 30, 22, 'activo'),
('EQ-05', 'Athletic Club', 20, 33, 28, 25, 'activo'),
('EQ-06', 'Real Betis', 20, 30, 25, 28, 'activo'),
('EQ-07', 'Valencia CF', 20, 22, 20, 35, 'activo'),
('EQ-08', 'Getafe CF', 20, 18, 15, 40, 'sancionado');