INSERT INTO equipos_futsal (
    nombre_equipo,
    ciudad,
    estadio
) VALUES
('Halcones Futsal', 'Bogota', 'Coliseo Halcon'),
('Titanes Futsal', 'Medellin', 'Coliseo Titan'),
('Guerreros Futsal', 'Cali', 'Coliseo Guerrero'),
('Panteras Futsal', 'Barranquilla', 'Coliseo Pantera'),
('Lobos Futsal', 'Bucaramanga', 'Coliseo Lobo'),
('Aguilas Futsal', 'Pereira', 'Coliseo Aguila'),
('Dragones Futsal', 'Manizales', 'Coliseo Dragon'),
('Toros Futsal', 'Cartagena', 'Coliseo Toro'),
('Fenix Futsal', 'Santa Marta', 'Coliseo Fenix'),
('Estrellas Futsal', 'Cucuta', 'Coliseo Estrella'),
('Centauros Futsal', 'Ibague', 'Coliseo Centauro'),
('Guardianes Futsal', 'Neiva', 'Coliseo Guardian'),
('Cometas Futsal', 'Armenia', 'Coliseo Cometa'),
('Leones Futsal', 'Villavicencio', 'Coliseo Leon'),
('Imperio Futsal', 'Pasto', 'Coliseo Imperio');

INSERT INTO jugadores_futsal (
    nombre_jugador,
    posicion,
    nacionalidad,
    equipo_id,
    goles
) VALUES
('Carlos Mendoza', 'Ala', 'Colombia', 1, 12),
('Luis Ramirez', 'Pivot', 'Colombia', 2, 18),
('Andres Torres', 'Cierre', 'Ecuador', 3, 7),
('Diego Morales', 'Portero', 'Peru', 4, 1),
('Santiago Castro', 'Ala', 'Chile', 5, 14),
('Mateo Vargas', 'Pivot', 'Argentina', 6, 16),
('Gabriel Silva', 'Cierre', 'Brasil', 7, 6),
('Nicolas Herrera', 'Ala', 'Colombia', 8, 11),
('Daniel Ruiz', 'Pivot', 'Mexico', 9, 19),
('Alejandro Gomez', 'Portero', 'Uruguay', 10, 2),
('Fernando Lopez', 'Ala', 'Colombia', 11, 13),
('Jorge Martinez', 'Pivot', 'Paraguay', 12, 15),
('Sebastian Castro', 'Cierre', 'Chile', 13, 8),
('Miguel Fernandez', 'Ala', 'Argentina', 14, 10),
('Juan Rodriguez', 'Pivot', 'Brasil', 15, 17);