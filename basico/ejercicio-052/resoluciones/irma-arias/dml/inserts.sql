USE db_animacion_3d;

-- Inserción de mínimo 8 registros variados de animación 3D
INSERT INTO proyectos_animacion (nombre_escena, software_3d, fotogramas_totales, tiempo_render_horas, complejidad_poligonal, estado) VALUES
('Vuelo de DRON sobre Ciudad Sci-Fi', 'Blender', 7200, 48.5, 'alta', 'renderizado'),
('Rigging y Caminata de Personaje Biped', 'Maya', 1500, 12.0, 'media', 'renderizado'),
('Simulación de Fluidos e Hidrocarburos', 'Blender', 3600, 96.0, 'extrema', 'en_proceso'),
('Explosión de Motor V8 Mecánico', 'Cinema 4D', 900, 6.5, 'alta', 'renderizado'),
('Prueba de Iluminación y Shading PBR', '3ds Max', 250, 2.0, 'baja', 'renderizado'),
('Secuencia de Batalla Espacial Masiva', 'Blender', 10800, 120.0, 'extrema', 'cola_espera'),
('Camara Orbital en Interior Minimalista', 'Maya', 1800, 8.5, 'media', 'en_proceso'),
('Metamorfosis Orgánica Celular', 'Cinema 4D', 2400, 18.0, 'alta', 'renderizado');