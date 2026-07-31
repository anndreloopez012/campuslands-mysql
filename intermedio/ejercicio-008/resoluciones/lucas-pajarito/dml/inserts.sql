USE campuslands_mysql;

/*=========================================================
  Inserción de ciudades
=========================================================*/
INSERT INTO ciudades_fs(nombre_ciudad) VALUES
('Guatemala'),
('Antigua Guatemala'),
('Escuintla'),
('Cobán');

/*=========================================================
  Inserción de clubes
=========================================================*/
INSERT INTO clubes_fs(nombre_club,id_ciudad,estado) VALUES
('Academia Jaguar',1,'Activo'),
('Futsal Colonial',2,'Activo'),
('Escorpiones FS',3,'Activo'),
('Cobán Elite',4,'Activo');

/*=========================================================
  Inserción de jugadores
=========================================================*/
INSERT INTO jugadores_fs(nombre_jugador,posicion,edad,id_club) VALUES
('Carlos Méndez','Pivot',21,1),
('Luis Barrios','Ala',22,1),
('Andrés Fuentes','Defensa',24,2),
('Miguel Soto','Portero',27,2),
('José Cifuentes','Ala',19,3),
('Daniel Paredes','Pivot',23,3),
('Kevin Aguilar','Defensa',20,4),
('Pedro Lima','Portero',28,4);

/*=========================================================
  Inserción de estadísticas
=========================================================*/
INSERT INTO estadisticas_jugador_fs(
    id_jugador,
    partidos,
    goles,
    asistencias,
    tarjetas_amarillas
) VALUES
(1,12,16,5,1),
(2,14,9,7,2),
(3,15,3,6,4),
(4,15,0,1,1),
(5,11,8,5,0),
(6,13,12,4,2),
(7,10,2,3,3),
(8,9,0,2,1);

