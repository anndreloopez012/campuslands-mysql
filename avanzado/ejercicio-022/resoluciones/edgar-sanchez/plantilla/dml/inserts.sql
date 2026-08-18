INSERT INTO artistas_3d (nombre_artista, especialidad, correo) VALUES
('Guillermo del Toro', 'Dirección / Concept', 'guillermo.toro@animation.com'),
('Sofía López', 'Rigging / Lighter', 'sofia.lopez@animation.com'),
('Mateo Fernández', 'Modelado 3D / Texturizado', 'mateo.fernandez@animation.com'),
('Lucía Morales', 'VFX / Simulación', 'lucia.morales@animation.com');

INSERT INTO proyectos_animacion (director_id, nombre_proyecto, fps, resolucion_target, estado_proyecto) VALUES
(1, 'El Reino de Cristal', 24, '3840x2160', 'En Producción'),
(1, 'CyberCity 2099', 30, '1920x1080', 'Renderizado');

INSERT INTO escenas_3d (proyecto_id, numero_escena, nombre_escena, duracion_frames, complejidad) VALUES
(1, 1, 'Secuencia de Apertura en el Bosque', 240, 'Alta'),
(1, 2, 'Batalla en la Ciudadela', 480, 'Extrema'),
(2, 1, 'Persecución en Autopista Neon', 360, 'Media');

INSERT INTO animaciones_assets (escena_id, artista_asignado_id, nombre_asset, tipo_asset, poligono_count) VALUES
(1, 3, 'Golem de Piedra', 'Personaje', 150000),
(1, 3, 'Árbol Ancestral', 'Escenario', 85000),
(2, 2, 'Armadura Dragón', 'Rigging', 220000),
(2, 4, 'Explosión Mágica', 'Efecto VFX', 500000),
(3, 3, 'Vehículo Volador', 'Prop', 95000);

INSERT INTO render_frames (escena_id, frame_numero, tiempo_render_segundos, ram_usada_gb, estado_frame) VALUES
(1, 1, 120.50, 14.50, 'Completado'),
(1, 2, 125.00, 15.00, 'Completado'),
(1, 3, 118.20, 14.20, 'Completado'),
(2, 1, 450.00, 31.50, 'Completado'),
(2, 2, 480.00, 32.00, 'Completado'),
(2, 3, 510.10, 31.80, 'Completado'),
(3, 1, 85.40, 8.50, 'Completado');