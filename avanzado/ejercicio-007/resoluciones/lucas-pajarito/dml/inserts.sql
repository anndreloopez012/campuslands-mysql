USE campuslands_mysql;

-- =====================================
-- Inserción de ciudades
-- =====================================
INSERT INTO ciudades_liga_vw(nombre_ciudad) VALUES
('Guatemala'),
('Quetzaltenango'),
('Escuintla'),
('Antigua Guatemala'),
('Cobán');

-- =====================================
-- Inserción de entrenadores
-- =====================================
INSERT INTO entrenadores_liga_vw(nombre_entrenador) VALUES
('Carlos Ruiz'),
('Miguel López'),
('Andrés Pérez'),
('José Martínez'),
('Luis Ramírez');

-- =====================================
-- Inserción de equipos
-- =====================================
INSERT INTO equipos_liga_vw(
    nombre_equipo,
    id_ciudad,
    id_entrenador,
    partidos_jugados,
    partidos_ganados,
    partidos_empatados,
    partidos_perdidos,
    goles_favor,
    goles_contra,
    puntos,
    estado
) VALUES
('Tigres FC',1,1,10,7,2,1,20,8,23,'Activo'),
('Leones FC',2,2,10,6,1,3,18,12,19,'Activo'),
('Halcones FC',3,3,10,5,3,2,16,10,18,'Activo'),
('Águilas FC',4,4,10,3,4,3,12,14,13,'Activo'),
('Toros FC',5,5,10,2,2,6,9,18,8,'Inactivo');