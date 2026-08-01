-- DML: Inserción y actualización de datos para fútbol sala
USE db_futbol_sala;

INSERT INTO equipos_sala (codigo_equipo, nombre_equipo, partidos_jugados, goles_favor, puntos, estado_equipo) VALUES
('FUT-01', 'Leones FS', 10, 35, 25, 'activo'),
('FUT-02', 'Tiburones Sala', 10, 28, 22, 'activo'),
('FUT-03', 'Rápidos FC', 10, 30, 21, 'activo'),
('FUT-04', 'Dinamo Futsal', 10, 24, 16, 'activo'),
('FUT-05', 'Guerreros FS', 10, 20, 13, 'activo'),
('FUT-06', 'Titanes Sala', 10, 18, 10, 'activo'),
('FUT-07', 'Fénix Futsal', 10, 15, 7, 'activo'),
('FUT-08', 'Estrellas FC', 10, 12, 4, 'suspendido');

-- Actualizaciones profesionales (UPDATE) para reflejar cambios en la jornada posterior
-- 1. Actualizar puntos y goles de Leones FS tras ganar un partido clave
UPDATE equipos_sala 
SET partidos_jugados = 11, goles_favor = goles_favor + 4, puntos = puntos + 3 
WHERE codigo_equipo = 'FUT-01';

-- 2. Modificar el estado a 'activo' del equipo suspendido tras cumplir sanción administrativa
UPDATE equipos_sala 
SET estado_equipo = 'activo' 
WHERE codigo_equipo = 'FUT-08';

-- 3. Actualizar masivamente sumando 1 partido jugado a todos los equipos activos de la tabla
UPDATE equipos_sala 
SET partidos_jugados = partidos_jugados + 1 
WHERE estado_equipo = 'activo';