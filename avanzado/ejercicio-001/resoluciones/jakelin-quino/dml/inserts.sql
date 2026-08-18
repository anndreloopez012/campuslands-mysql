-- Inserción de datos con INNER JOIN

INSERT INTO ejercicio-001-equipos 
(nombre_equipo, entrenador, fecha_creacion, region) 
VALUES 
('Fury Gaming', 'Roberto Sanchez', '2023-01-15', 'LATAM'),
('Dark Wolves', 'Patricia Ruiz', '2023-03-20', 'LATAM'),
('Star Knights', 'Miguel Torres', '2023-06-10', 'EU'),
('Thunder Lions', 'Laura Mora', '2023-08-01', 'ASIA');

INSERT INTO ejercicio-001-jugadores 
(equipo_id, nombre_jugador, rol, campeon_favorito, partidas, kills, deaths, assists) 
VALUES 
(1, 'Carlos Pérez', 'Carry', 'Jinx', 25, 185, 42, 120),
(1, 'María López', 'Support', 'Thresh', 25, 20, 55, 210),
(1, 'Juan Rivas', 'Mid', 'Ahri', 25, 150, 38, 95),
(2, 'Ana Torres', 'Jungle', 'Lee Sin', 20, 100, 50, 80),
(2, 'Luis Mora', 'Top', 'Garen', 20, 85, 45, 60),
(2, 'Sofía Díaz', 'Carry', 'Caitlyn', 20, 130, 48, 75),
(3, 'David Cruz', 'Mid', 'Zed', 18, 120, 30, 70),
(3, 'Elena Gil', 'Support', 'Lulu', 18, 15, 25, 150),
(3, 'Roberto Solis', 'Jungle', 'Vi', 18, 90, 35, 65),
(4, 'Diego Ramos', 'Top', 'Darius', 22, 110, 40, 90),
(4, 'Valentina Diaz', 'Carry', 'Corki', 22, 160, 35, 105),
(4, 'Sebastian Cruz', 'Mid', 'Syndra', 22, 140, 30, 110);