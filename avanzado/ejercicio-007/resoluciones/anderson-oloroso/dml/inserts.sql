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
    nacionalidad,
    equipo_id,
    goles,
    asistencias
) VALUES
('Carlos Mendoza', 'Delantero', 'Colombia', 1, 18, 7),
('Luis Martinez', 'Mediocampista', 'Argentina', 2, 9, 14),
('Andres Ramirez', 'Defensa', 'Uruguay', 3, 3, 5),
('Diego Torres', 'Portero', 'Mexico', 4, 0, 2),
('Santiago Castro', 'Delantero', 'Chile', 5, 15, 8),
('Mateo Rodriguez', 'Mediocampista', 'Colombia', 6, 11, 12),
('Gabriel Silva', 'Defensa', 'Brasil', 7, 4, 6),
('Nicolas Herrera', 'Delantero', 'Ecuador', 8, 21, 5),
('Daniel Morales', 'Mediocampista', 'Peru', 9, 8, 16),
('Alejandro Ruiz', 'Defensa', 'Paraguay', 10, 2, 7),
('Fernando Gomez', 'Portero', 'Colombia', 11, 0, 3),
('Jorge Vargas', 'Delantero', 'Argentina', 12, 17, 9),
('Sebastian Lopez', 'Mediocampista', 'Chile', 13, 10, 11),
('Miguel Fernandez', 'Defensa', 'Uruguay', 14, 5, 4),
('Juan Castillo', 'Delantero', 'Mexico', 15, 14, 6);