-- =====================================================
-- Inserción de datos
-- =====================================================

USE campuslands_mysqli;

INSERT INTO equipos
(nombre, ciudad, entrenador, partidos_jugados, puntos, diferencia_goles, estado)
VALUES
('Real Madrid','Madrid','Carlo Ancelotti',38,95,58,'Activo'),
('Barcelona','Barcelona','Hansi Flick',38,88,46,'Activo'),
('Manchester City','Manchester','Pep Guardiola',38,91,63,'Activo'),
('Liverpool','Liverpool','Arne Slot',38,86,41,'Activo'),
('Bayern Munich','Múnich','Vincent Kompany',34,82,55,'Activo'),
('PSG','París','Luis Enrique',34,84,49,'Activo'),
('Juventus','Turín','Thiago Motta',38,74,28,'Activo'),
('Inter Milan','Milán','Simone Inzaghi',38,89,51,'Activo'),
('Arsenal','Londres','Mikel Arteta',38,87,47,'Activo'),
('Chelsea','Londres','Enzo Maresca',38,68,18,'Inactivo');