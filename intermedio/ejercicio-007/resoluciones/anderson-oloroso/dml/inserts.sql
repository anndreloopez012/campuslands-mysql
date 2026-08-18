INSERT INTO equipos_futbol (
    nombre_equipo,
    ciudad,
    estadio
) VALUES
('Titanes FC', 'Madrid', 'Estadio Titan'),
('Leones United', 'Barcelona', 'Estadio Leon'),
('Halcones FC', 'Valencia', 'Estadio Halcon'),
('Guerreros FC', 'Sevilla', 'Estadio Guerrero'),
('Estrellas FC', 'Bilbao', 'Estadio Estrella'),
('Toros FC', 'Malaga', 'Estadio Toro'),
('Lobos FC', 'Vigo', 'Estadio Lobo'),
('Aguilas FC', 'Granada', 'Estadio Aguila'),
('Panteras FC', 'Alicante', 'Estadio Pantera'),
('Dragones FC', 'Zaragoza', 'Estadio Dragon'),
('Fenix FC', 'Murcia', 'Estadio Fenix'),
('Cometas FC', 'Valladolid', 'Estadio Cometa'),
('Centauros FC', 'Santander', 'Estadio Centauro'),
('Guardianes FC', 'Cordoba', 'Estadio Guardian'),
('Imperio FC', 'Toledo', 'Estadio Imperio');

INSERT INTO jugadores_futbol (
    nombre_jugador,
    posicion,
    nacionalidad
) VALUES
('Carlos Mendoza', 'Delantero', 'Colombia'),
('Luis Martinez', 'Mediocampista', 'Argentina'),
('Andres Ramirez', 'Defensa', 'Uruguay'),
('Diego Torres', 'Portero', 'Mexico'),
('Santiago Castro', 'Delantero', 'Chile'),
('Mateo Rodriguez', 'Mediocampista', 'Colombia'),
('Gabriel Silva', 'Defensa', 'Brasil'),
('Nicolas Herrera', 'Delantero', 'Ecuador'),
('Daniel Morales', 'Mediocampista', 'Peru'),
('Alejandro Ruiz', 'Defensa', 'Paraguay'),
('Fernando Gomez', 'Portero', 'Colombia'),
('Jorge Vargas', 'Delantero', 'Argentina'),
('Sebastian Lopez', 'Mediocampista', 'Chile'),
('Miguel Fernandez', 'Defensa', 'Uruguay'),
('Juan Castillo', 'Delantero', 'Mexico');

INSERT INTO jugadores_equipos (
    jugador_id,
    equipo_id,
    numero_camiseta,
    temporada
) VALUES
(1, 1, 9, '2026'),
(2, 2, 8, '2026'),
(3, 3, 4, '2026'),
(4, 4, 1, '2026'),
(5, 5, 11, '2026'),
(6, 6, 10, '2026'),
(7, 7, 5, '2026'),
(8, 8, 7, '2026'),
(9, 9, 6, '2026'),
(10, 10, 3, '2026'),
(11, 11, 1, '2026'),
(12, 12, 9, '2026'),
(13, 13, 8, '2026'),
(14, 14, 2, '2026'),
(15, 15, 10, '2026');