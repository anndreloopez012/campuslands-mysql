-- Insertar Streamers (6 registros)
INSERT INTO streamers (username, email, pais, estado) VALUES
('StreamKing', 'king@stream.com', 'México', 'Activo'),
('GamerGirl_99', 'gg99@stream.com', 'España', 'Activo'),
('ProGamer_X', 'progamer@stream.com', 'Argentina', 'Activo'),
('NinjaPixel', 'pixel@stream.com', 'Colombia', 'Inactivo'),
('TechReviewer', 'tech@stream.com', 'México', 'Activo'),
('SpeedRunner', 'speed@stream.com', 'Chile', 'Baneado');

-- Insertar Transmisiones (6 registros)
INSERT INTO transmisiones (id_streamer, titulo, categoria, espectadores_pico, duracion_minutos, fecha_transmision) VALUES
(1, 'Torneo Final Just Chatting y Charla Tecnica', 'Just Chatting', 12500, 180, '2026-08-01 18:00:00'),
(2, 'Camino a Rango Leyenda en Valorant', 'Valorant', 8900, 240, '2026-08-02 20:00:00'),
(3, 'Maratón Minecraft Survival Hardcore Día 1', 'Minecraft', 15400, 360, '2026-08-03 15:00:00'),
(1, 'Probando la Nueva Actualización de Valorant', 'Valorant', 9800, 150, '2026-08-05 19:30:00'),
(5, 'Review en Vivo del Nuevo Hardware de Streaming', 'Just Chatting', 4500, 120, '2026-08-10 17:00:00'),
(3, 'Speedrun World Record Attempt Minecraft', 'Minecraft', 22000, 210, '2026-08-15 14:00:00');

-- Insertar Donaciones (6 registros)
INSERT INTO donaciones (id_transmision, id_donador, monto_usd, fecha_donacion) VALUES
(1, 101, 50.00, '2026-08-01 18:30:00'),
(1, 102, 10.00, '2026-08-01 19:15:00'),
(3, 103, 100.00, '2026-08-03 16:00:00'),
(3, 104, 5.00, '2026-08-03 17:45:00'),
(6, 105, 500.00, '2026-08-15 14:30:00'),
(6, 101, 25.00, '2026-08-15 15:10:00');

-- Insertar Ejercicios (6 registros con el Ejercicio 030)
INSERT INTO ejercicios (codigo, titulo, dificultad, tematica) VALUES
('EJ-026', 'Tuning de Buffer Pools en Servidores de Streaming', 'Avanzado', 'equipo de streaming'),
('EJ-027', 'Estrategias de Partitioning por Rango de Fechas', 'Avanzado aplicado', 'equipo de streaming'),
('EJ-028', 'Replicación Read/Write Split para Métricas de Streams', 'Avanzado aplicado', 'equipo de streaming'),
('EJ-029', 'Identificación de Slow Queries en Producción', 'Avanzado', 'equipo de streaming'),
('EJ-030', 'optimizacion para equipo de streaming', 'Avanzado aplicado', 'equipo de streaming'),
('EJ-031', 'Configuración de Connection Pooling y Caches', 'Avanzado', 'equipo de streaming');