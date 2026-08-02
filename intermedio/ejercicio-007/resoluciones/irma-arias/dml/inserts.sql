USE liga_futbol_db;

INSERT INTO equipos_liga (nombre_equipo, ciudad, estadio) VALUES
('Real Madrid', 'Madrid', 'Santiago Bernabeu'),
('FC Barcelona', 'Barcelona', 'Camp Nou'),
('Manchester City', 'Manchester', 'Etihad Stadium'),
('Bayern Munich', 'Munich', 'Allianz Arena');

INSERT INTO jugadores_liga (nombre_jugador, posicion, goles_anotados, tarjetas_amarillas, id_equipo, estado) VALUES
('Kylian Mbappe', 'Delantero', 18, 2, 1, 'activo'),
('Jude Bellingham', 'Mediocampista', 12, 4, 1, 'activo'),
('Robert Lewandowski', 'Delantero', 15, 1, 2, 'activo'),
('Lamine Yamal', 'Delantero', 8, 3, 2, 'activo'),
('Erling Haaland', 'Delantero', 22, 1, 3, 'activo'),
('Kevin De Bruyne', 'Mediocampista', 7, 2, 3, 'lesionado'),
('Harry Kane', 'Delantero', 20, 2, 4, 'activo'),
('Jamal Musiala', 'Mediocampista', 9, 5, 4, 'suspendido');
