-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Equipos (nombre, ciudad) VALUES
('Inter Futsal', 'Madrid'),
('Barça Futsal', 'Barcelona');

INSERT INTO Jugadores (equipo_id, nombre, apellido, dorsal, posicion) VALUES
(1, 'Carlos', 'Ortiz', 4, 'Cierre'),
(1, 'Ricardinho', 'Silva', 10, 'Ala'),
(2, 'Sergio', 'Lozano', 9, 'Ala'),
(2, 'Ferrao', 'Gadeia', 11, 'Pivot');

INSERT INTO Partidos (equipo_local_id, equipo_visitante_id, goles_local, goles_visitante, fecha_partido, pabellon) VALUES
(1, 2, 3, 2, '2026-08-10 20:00:00', 'Pabellón Municipal Central'),
(2, 1, 4, 4, '2026-08-17 19:00:00', 'Palacio de Deportes');