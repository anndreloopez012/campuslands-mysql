-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- Carga de Streamers
INSERT INTO streamers (nombre, nickname, email, pais, fecha_ingreso) VALUES
('Carlos Mendoza', 'CarLitox', 'carlos@streamteam.com', 'Colombia', '2023-01-15'),
('Mariana López', 'MariPlay', 'mariana@streamteam.com', 'México', '2023-03-20'),
('David Gómez', 'DaveRig', 'david@streamteam.com', 'Argentina', '2023-05-10'),
('Sofía Ramírez', 'SofiCraft', 'sofia@streamteam.com', 'España', '2023-08-01');

-- Carga de Plataformas
INSERT INTO plataformas (nombre_plataforma, comision_porcentaje) VALUES
('Twitch', 20.00),
('YouTube Live', 30.00),
('Kick', 5.00);

-- Carga de Transmisiones
INSERT INTO transmisiones (id_streamer, id_plataforma, titulo, categoria_juego, fecha_inicio, duracion_minutos, espectadores_promedio, espectadores_pico, ingresos_generados) VALUES
(1, 1, 'Maratón RIFT Valorant', 'Valorant', '2024-02-01 18:00:00', 240, 1500, 3200, 450.50),
(1, 3, 'Just Chatting & Chill', 'Just Chatting', '2024-02-03 20:00:00', 180, 2100, 4100, 620.00),
(2, 1, 'Minecraft Hardcore Día 100', 'Minecraft', '2024-02-02 15:00:00', 300, 3400, 7800, 890.00),
(2, 2, 'Resumen semanal de Gaming', 'Special Events', '2024-02-05 19:00:00', 120, 1200, 2500, 210.00),
(3, 1, 'Torneo Apex Legends Semi-Finales', 'Apex Legends', '2024-02-04 17:00:00', 210, 890, 1800, 150.00),
(4, 3, 'Construcciones Gigantes en Survival', 'Minecraft', '2024-02-06 16:00:00', 360, 4200, 9500, 1150.00);

-- Carga de Equipamiento de Streaming
INSERT INTO equipamiento (id_streamer, componente, marca, modelo, costo) VALUES
(1, 'Micrófono', 'Shure', 'SM7B', 399.00),
(1, 'Cámara', 'Sony', 'Alpha 6400', 899.00),
(2, 'Capturadora', 'Elgato', 'HD60 X', 199.99),
(2, 'Micrófono', 'Rode', 'NT-USB', 169.00),
(3, 'Tarjeta de Video', 'NVIDIA', 'RTX 4080', 1199.00),
(4, 'Luz Key Light', 'Elgato', 'Key Light Air', 129.99);