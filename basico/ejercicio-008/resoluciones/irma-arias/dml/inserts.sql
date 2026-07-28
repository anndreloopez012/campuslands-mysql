USE db_futbol_sala_irma;

-- Inserción de 8 registros iniciales
INSERT INTO equipos_sala (nombre_club, partidos_jugados, goles_favor, goles_contra, puntos, estado) VALUES
('Leones F.S.', 5, 18, 10, 12, 'Activo'),
('Tigres F.C.', 5, 15, 12, 10, 'Activo'),
('Real Academia', 5, 14, 14, 8, 'Activo'),
('Futsal Stars', 5, 20, 15, 9, 'Activo'),
('Deportivo Capital', 5, 10, 16, 5, 'Activo'),
('Banderas F.S.', 5, 12, 18, 4, 'Activo'),
('Fénix Sala', 5, 8, 19, 3, 'Inactivo'),
('Los Amigos', 5, 9, 12, 6, 'Activo');

-- Práctica de UPDATE: Actualizar estadísticas tras una nueva jornada
UPDATE equipos_sala 
SET partidos_jugados = 6, goles_favor = 21, goles_contra = 11, puntos = 15 
WHERE nombre_club = 'Leones F.S.';

UPDATE equipos_sala 
SET puntos = puntos + 3, goles_favor = goles_favor + 3 
WHERE nombre_club = 'Tigres F.C.';

UPDATE equipos_sala 
SET estado = 'Activo' 
WHERE nombre_club = 'Fénix Sala';