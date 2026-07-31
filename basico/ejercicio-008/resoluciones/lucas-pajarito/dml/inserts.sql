USE campuslands_mysql;

/*=========================================================
  Inserción de datos
=========================================================*/

INSERT INTO jugadores_futsal(
    nombre_jugador,
    posicion,
    edad,
    goles,
    asistencias,
    partidos_jugados,
    estado
) VALUES
('Carlos Pérez','Pivot',20,15,5,10,'Activo'),
('Luis Gómez','Ala',22,10,8,12,'Activo'),
('Andrés López','Defensa',24,3,6,15,'Activo'),
('Miguel Ramírez','Portero',26,0,1,15,'Activo'),
('José Martínez','Ala',19,8,7,11,'Activo'),
('Daniel Ruiz','Pivot',23,12,4,13,'Activo'),
('Kevin Morales','Defensa',21,2,3,10,'Activo'),
('Pedro Castillo','Portero',28,0,2,9,'Inactivo'),
('Mario Hernández','Ala',25,9,5,14,'Activo'),
('Jorge Méndez','Pivot',27,18,6,16,'Activo');

/*=========================================================
  Operaciones UPDATE
=========================================================*/

-- Actualizar goles de Carlos Pérez
UPDATE jugadores_futsal
SET goles = 17
WHERE nombre_jugador = 'Carlos Pérez';

-- Cambiar estado de Pedro Castillo
UPDATE jugadores_futsal
SET estado = 'Activo'
WHERE nombre_jugador = 'Pedro Castillo';

-- Incrementar partidos jugados de Luis Gómez
UPDATE jugadores_futsal
SET partidos_jugados = partidos_jugados + 1
WHERE nombre_jugador = 'Luis Gómez';