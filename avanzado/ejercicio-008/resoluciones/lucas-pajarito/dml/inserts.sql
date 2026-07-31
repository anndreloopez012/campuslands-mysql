USE campuslands_mysql;

/*=========================================================
  Inserción de sedes
=========================================================*/
INSERT INTO sedes_fsl(nombre_sede) VALUES
('Sumpango'),
('Antigua'),
('Escuintla'),
('Cobán');

/*=========================================================
  Inserción de equipos
=========================================================*/
INSERT INTO equipos_fsl(nombre_equipo,id_sede,estado) VALUES
('Academia Centauro',1,'Activo'),
('Colonial FS',2,'Activo'),
('Tormenta Sala',3,'Activo'),
('Alta Verapaz FS',4,'Activo');

/*=========================================================
  Inserción de jugadores
=========================================================*/
INSERT INTO jugadores_fsl(nombre_jugador,posicion,edad,id_equipo) VALUES
('Carlos Molina','Pivot',20,1),
('Luis Herrera','Ala',22,1),
('Andrés Castro','Defensa',24,2),
('Miguel Sandoval','Portero',27,2),
('José Alvarado','Ala',19,3),
('Daniel Fuentes','Pivot',23,3),
('Kevin Rojas','Defensa',20,4),
('Pedro Vásquez','Portero',28,4);

/*=========================================================
  Inserción de rendimiento
=========================================================*/
INSERT INTO rendimiento_jugador_fsl(
    id_jugador,
    partidos,
    goles,
    asistencias,
    tarjetas
) VALUES
(1,12,16,5,1),
(2,14,9,7,2),
(3,15,3,6,4),
(4,15,0,1,1),
(5,11,8,5,0),
(6,13,12,4,2),
(7,10,2,3,3),
(8,9,0,2,1);