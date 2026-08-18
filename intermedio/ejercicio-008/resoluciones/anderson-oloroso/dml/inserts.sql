INSERT INTO equipos_futbol_sala (
    nombre_equipo,
    ciudad
) VALUES
('Titanes Sala', 'Bogota'),
('Halcones Sala', 'Medellin'),
('Guerreros Sala', 'Cali'),
('Lobos Sala', 'Barranquilla'),
('Panteras Sala', 'Cartagena'),
('Aguilas Sala', 'Pereira'),
('Dragones Sala', 'Manizales'),
('Fenix Sala', 'Bucaramanga'),
('Toros Sala', 'Cucuta'),
('Cometas Sala', 'Ibagué'),
('Guardianes Sala', 'Armenia'),
('Estrellas Sala', 'Santa Marta'),
('Centauros Sala', 'Villavicencio'),
('Leones Sala', 'Neiva'),
('Imperio Sala', 'Pasto');

INSERT INTO posiciones_futbol_sala (
    nombre_posicion
) VALUES
('Portero'),
('Cierre'),
('Ala'),
('Pivot'),
('Ala-Cierre'),
('Portero-Ala'),
('Defensa'),
('Mediocampista'),
('Atacante'),
('Universal'),
('Ala Derecho'),
('Ala Izquierdo'),
('Cierre Derecho'),
('Cierre Izquierdo'),
('Pivot Movil');

INSERT INTO jugadores_futbol_sala (
    nombre_jugador,
    nacionalidad,
    posicion_id,
    equipo_id
) VALUES
('Carlos Mendoza', 'Colombia', 1, 1),
('Luis Martinez', 'Argentina', 2, 2),
('Andres Ramirez', 'Uruguay', 3, 3),
('Diego Torres', 'Mexico', 4, 4),
('Santiago Castro', 'Chile', 5, 5),
('Mateo Rodriguez', 'Colombia', 6, 6),
('Gabriel Silva', 'Brasil', 7, 7),
('Nicolas Herrera', 'Ecuador', 8, 8),
('Daniel Morales', 'Peru', 9, 9),
('Alejandro Ruiz', 'Paraguay', 10, 10),
('Fernando Gomez', 'Colombia', 11, 11),
('Jorge Vargas', 'Argentina', 12, 12),
('Sebastian Lopez', 'Chile', 13, 13),
('Miguel Fernandez', 'Uruguay', 14, 14),
('Juan Castillo', 'Mexico', 15, 15);

INSERT INTO temporadas_futbol_sala (
    nombre_temporada,
    anio_inicio,
    anio_fin
) VALUES
('Temporada 2022', 2022, 2023),
('Temporada 2023', 2023, 2024),
('Temporada 2024', 2024, 2025),
('Temporada 2025', 2025, 2026),
('Temporada 2026', 2026, 2027);

INSERT INTO participaciones_futbol_sala (
    jugador_id,
    temporada_id,
    numero_camiseta,
    goles,
    asistencias
) VALUES
(1, 1, 1, 4, 6),
(2, 2, 4, 8, 5),
(3, 3, 7, 10, 9),
(4, 4, 9, 15, 7),
(5, 5, 10, 12, 11),
(6, 1, 6, 5, 8),
(7, 2, 3, 7, 4),
(8, 3, 8, 11, 10),
(9, 4, 11, 18, 6),
(10, 5, 5, 9, 12),
(11, 1, 12, 6, 7),
(12, 2, 13, 14, 8),
(13, 3, 14, 3, 9),
(14, 4, 15, 13, 5),
(15, 5, 16, 16, 10);