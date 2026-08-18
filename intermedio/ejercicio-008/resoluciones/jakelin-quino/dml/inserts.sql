-- Insertar equipos
INSERT INTO `ejercicio-008-int-equipos` VALUES 
(1, 'Fury FC', 'Madrid', 'Carlos Gómez'),
(2, 'Wolves FC', 'Barcelona', 'Ana Martínez'),
(3, 'Knights FC', 'Valencia', 'Luis Pérez');

-- Insertar posiciones
INSERT INTO `ejercicio-008-int-posiciones` VALUES 
(1, 'delantero', 'Jugador de ataque'),
(2, 'defensa', 'Jugador defensivo'),
(3, 'portero', 'Guarda meta');

-- Insertar jugadores
INSERT INTO `ejercicio-008-int-jugadores` 
(nombre, equipo_id, posicion_id, goles, asistencias, partidos, estado) VALUES 
('Carlos Díaz', 1, 1, 15, 8, 12, 'activo'),
('María Rivas', 1, 2, 3, 10, 12, 'activo'),
('Juan Mora', 1, 3, 0, 2, 12, 'activo'),
('Ana Torres', 2, 1, 18, 5, 12, 'activo'),
('Luis Soto', 2, 2, 4, 8, 12, 'activo'),
('Sofía Cruz', 2, 3, 0, 1, 12, 'activo'),
('David Ruiz', 3, 1, 12, 10, 10, 'lesionado'),
('Elena Gil', 3, 2, 2, 7, 12, 'activo'),
('Pedro Solis', 3, 3, 0, 0, 8, 'activo');