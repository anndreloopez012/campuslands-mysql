-- Insertar Regiones (6 registros)
INSERT INTO regiones (nombre, dificultad_region) VALUES
('Bosque del Susurro', 'Fácil'),
('Ruinas del Desierto', 'Intermedio'),
('Templo de Hielo', 'Difícil'),
('Ciudad de las Sombras', 'Avanzado'),
('Volcán Infernal', 'Extremo'),
('Abismo Marítimo', 'Leyenda');

-- Insertar Jugadores (6 registros)
INSERT INTO jugadores (gamertag, nivel_cuenta) VALUES
('ShadowRunner', 45),
('AventureroX', 30),
('PhoenixBlade', 60),
('GhostKnight', 25),
('ValkyrieStar', 50),
('DragonSlayer', 15);

-- Insertar Misiones (6 registros)
INSERT INTO misiones (codigo_mision, nombre, id_region, puntos_experiencia) VALUES
('MIS-001', 'El Rescate de la Reliquia', 1, 500),
('MIS-002', 'Emboscada en las Ruinas', 2, 1200),
('MIS-003', 'El Guardián del Templo', 3, 2500),
('MIS-004', 'Infiltración Nocturna', 4, 3200),
('MIS-005', 'Escape del Núcleo Volcánico', 5, 5000),
('MIS-006', 'Tesoro Sumergido', 6, 4000);

-- Insertar Partidas / Puntuaciones (6 registros)
INSERT INTO partidas (id_jugador, id_mision, puntuacion_obtenida, tiempo_segundos, fecha_partida) VALUES
(1, 1, 9500, 120, '2026-03-01 10:00:00'),
(2, 1, 8800, 140, '2026-03-01 10:15:00'),
(3, 1, 9900, 105, '2026-03-01 11:00:00'),
(1, 2, 14500, 250, '2026-03-01 12:30:00'),
(4, 2, 12000, 310, '2026-03-01 13:00:00'),
(5, 3, 22000, 400, '2026-03-02 09:00:00');

-- Insertar Ejercicios (6 registros con el Ejercicio 027)
INSERT INTO ejercicios (codigo, titulo, dificultad, tematica) VALUES
('EJ-022', 'Mecanicas de Combate con Espadas', 'Intermedio', 'videojuego de accion y aventura'),
('EJ-023', 'Sistema de Sigilo y Cobertura', 'Intermedio aplicado', 'videojuego de accion y aventura'),
('EJ-024', 'Plataformeo 3D y Puzles de Entorno', 'Avanzado', 'videojuego de accion y aventura'),
('EJ-025', 'Diseño de Enfrentamientos con Jefes', 'Avanzado aplicado', 'videojuego de accion y aventura'),
('EJ-026', 'Gestión de Inventario Dinámico', 'Intermedio aplicado', 'videojuego de accion y aventura'),
('EJ-027', 'window functions para videojuego de accion y aventura', 'Avanzado aplicado', 'videojuego de accion y aventura');
