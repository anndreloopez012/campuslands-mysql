-- funcionalidades/ejercicio-014 - maria-montepeque
USE campuslands_mysql;

-- gasto_actual y total_frames arrancan en 0: los va a llenar el trigger
-- trg_frames_after_insert en cuanto se inserten renders_frames abajo.
INSERT INTO proyectos_animacion (nombre, estudio, presupuesto, estado) VALUES
    ('Aventura Estelar', 'Estudio Nebula', 50000.00, 'produccion'),
    ('Mundo de Cristal', 'Estudio Nebula', 30000.00, 'produccion'),
    ('Cortometraje Eco', 'Pixel Forge', 8000.00, 'pausado'),
    ('Piloto Robotico', 'Pixel Forge', 15000.00, 'finalizado');

-- Cada INSERT aqui dispara trg_frames_after_insert, que actualiza el
-- proyecto correspondiente en proyectos_animacion.
INSERT INTO renders_frames (proyecto_id, numero_frame, costo_render, estado_render) VALUES
    (1, 1, 120.50, 'renderizado'),
    (1, 2, 95.00, 'renderizado'),
    (1, 3, 110.25, 'fallido'),
    (1, 4, 88.00, 'renderizado'),
    (1, 5, 102.75, 'renderizado'),
    (1, 6, 99.50, 'pendiente'),
    (2, 1, 130.00, 'renderizado'),
    (2, 2, 115.50, 'renderizado'),
    (2, 3, 140.25, 'renderizado'),
    (2, 4, 125.00, 'pendiente'),
    (3, 1, 60.00, 'renderizado'),
    (3, 2, 55.50, 'renderizado');
