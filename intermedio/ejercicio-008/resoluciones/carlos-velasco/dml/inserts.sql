-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;


INSERT INTO ciudades
(nombre, departamento)
VALUES
('Guatemala','Guatemala'),
('Mixco','Guatemala'),
('Villa Nueva','Guatemala'),
('Antigua Guatemala','Sacatepéquez');


INSERT INTO equipos
(ciudad_id, nombre)
VALUES
(1,'Titanes FS'),
(2,'Leones FS'),
(3,'Halcones FS'),
(4,'Águilas FS');


INSERT INTO jugadores
(equipo_id, nombre, posicion, edad)
VALUES
(1,'Carlos Méndez','Pívot',24),
(1,'Luis Pérez','Ala',26),
(2,'José Ramírez','Cierre',23),
(2,'Mario López','Portero',29),
(3,'Andrés Castillo','Pívot',22),
(3,'Kevin Morales','Ala',25),
(4,'Diego Hernández','Cierre',27),
(4,'Pedro González','Pívot',21);


INSERT INTO estadisticas_jugadores
(jugador_id, temporada, goles, asistencias)
VALUES
(1,2026,18,7),
(2,2026,10,11),
(3,2026,4,5),
(4,2026,0,2),
(5,2026,16,8),
(6,2026,9,10),
(7,2026,5,9),
(8,2026,20,6);