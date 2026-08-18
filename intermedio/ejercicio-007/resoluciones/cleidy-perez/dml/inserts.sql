-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Sedes (nombre, ciudad, tipo_superficie) VALUES
('Pabellón Municipal Central', 'Madrid', 'Parqué'),
('Palacio de Deportes', 'Barcelona', 'Goma Sintética');

INSERT INTO Equipos (nombre, ciudad) VALUES
('Inter Futsal', 'Madrid'),
('Barça Futsal', 'Barcelona');

INSERT INTO Jugadores (equipo_id, nombre, apellido, dorsal, posicion) VALUES
(1, 'Carlos', 'Ortiz', 4, 'Cierre'),
(1, 'Ricardinho', 'Silva', 10, 'Ala'),
(2, 'Sergio', 'Lozano', 9, 'Ala'),
(2, 'Ferrao', 'Gadeia', 11, 'Pivot');

INSERT INTO Partidos (equipo_local_id, equipo_visitante_id, sede_id, fecha_partido, goles_local, goles_visitante) VALUES
(1, 2, 1, '2026-08-10 20:00:00', 3, 2);

INSERT INTO Goles (partida_id, jugador_id, minuto_gol, tipo_gol) VALUES
(1, 2, 12, 'Normal'),
(1, 1, 28, 'Penalti'),
(1, 3, 35, 'Normal'),
(1, 2, 39, 'Doble Penalti');