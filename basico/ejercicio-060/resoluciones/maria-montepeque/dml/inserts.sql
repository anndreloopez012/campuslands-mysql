-- Datos de practica: creadores y directos de un equipo de streaming.
USE campuslands_mysql;

INSERT INTO creadores_basico (nombre_canal, categoria_principal, seguidores) VALUES
('MidnightPlays', 'juegos', 132000),
('InkAndCanvas', 'arte', 51000),
('LoFiLoungeRadio', 'musica', 64000),
('DevWithSara', 'programacion', 35000);

INSERT INTO directos_basico (id_creador, titulo, duracion_min, espectadores_pico, fecha) VALUES
(1, 'Maraton RPG Nocturno - Parte 1', 190, 4400, '2026-01-05'),
(1, 'Torneo Comunitario de Verano', 160, 5300, '2026-01-20'),
(2, 'Ilustrando Personajes de Fantasia', 125, 1900, '2026-01-08'),
(2, 'Speedpaint en Directo', 95, 1600, '2026-02-01'),
(3, 'Sesion Lofi para Concentrarse', 210, 2300, '2026-01-12'),
(3, 'Especial Vinilos Retro', 170, 2000, '2026-02-10'),
(4, 'Programando una API en Vivo', 145, 950, '2026-01-18'),
(4, 'Depurando Errores Reales', 115, 820, '2026-02-15'),
(1, 'Reaccionando a Nuevos Lanzamientos', 105, 3700, '2026-03-01');
