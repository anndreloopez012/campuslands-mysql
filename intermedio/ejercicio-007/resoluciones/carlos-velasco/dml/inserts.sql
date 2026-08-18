-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;


INSERT INTO equipos
(nombre, ciudad)
VALUES
('Leones FC','Guatemala'),
('Tigres Unidos','Mixco'),
('Águilas Deportivas','Villa Nueva'),
('Halcones FC','Antigua Guatemala');


INSERT INTO jugadores
(nombre, posicion, edad)
VALUES
('Carlos Méndez','Delantero',24),
('Luis Pérez','Mediocampista',27),
('José Ramírez','Defensa',22),
('Mario López','Portero',29),
('Andrés Castillo','Delantero',23),
('Kevin Morales','Defensa',25),
('Diego Hernández','Mediocampista',26),
('Pedro González','Delantero',21);


INSERT INTO participaciones
(jugador_id, equipo_id, temporada, goles, asistencias)
VALUES
(1,1,2026,18,7),
(2,1,2026,8,14),
(3,2,2026,2,4),
(4,2,2026,0,1),
(5,3,2026,15,6),
(6,3,2026,1,2),
(7,4,2026,7,10),
(8,4,2026,20,5);