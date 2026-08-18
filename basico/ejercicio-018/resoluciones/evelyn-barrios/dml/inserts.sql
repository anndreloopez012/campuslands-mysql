-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

-- Insertar destinos turísticos
INSERT INTO destinos (nombre, pais, descripcion, precio_promedio_noche, estado) VALUES
('París', 'Francia', 'La ciudad del amor, famosa por la Torre Eiffel y el Louvre.', 150.00, 'activo'),
('Tokio', 'Japón', 'Metrópolis vibrante con una mezcla de tradición y modernidad.', 120.00, 'activo'),
('Nueva York', 'Estados Unidos', 'La Gran Manzana, con sus icónicos rascacielos y teatros.', 200.00, 'activo'),
('Roma', 'Italia', 'Ciudad eterna con ruinas antiguas y una rica historia.', 130.00, 'activo'),
('Sídney', 'Australia', 'Famosa por su Ópera y sus playas.', 180.00, 'activo'),
('Río de Janeiro', 'Brasil', 'Playas espectaculares y el Cristo Redentor.', 100.00, 'activo'),
('Dubái', 'Emiratos Árabes Unidos', 'Lujo y arquitectura moderna en el desierto.', 250.00, 'activo'),
('Londres', 'Reino Unido', 'Capital histórica con palacios y museos.', 160.00, 'activo'),
('Cairo', 'Egipto', 'Hogar de las pirámides y la antigua civilización egipcia.', 90.00, 'inactivo'); -- Destino inactivo

-- Insertar reservas
INSERT INTO reservas (id_destino, fecha_inicio, fecha_fin, numero_personas, precio_total, estado) VALUES
((SELECT id FROM destinos WHERE nombre = 'París'), '2024-09-10', '2024-09-15', 2, 750.00, 'confirmada'),
((SELECT id FROM destinos WHERE nombre = 'Tokio'), '2024-10-05', '2024-10-12', 1, 840.00, 'pendiente'),
((SELECT id FROM destinos WHERE nombre = 'Nueva York'), '2024-11-20', '2024-11-25', 3, 1000.00, 'confirmada'),
((SELECT id FROM destinos WHERE nombre = 'Roma'), '2025-01-15', '2025-01-20', 2, 650.00, 'confirmada'),
((SELECT id FROM destinos WHERE nombre = 'Sídney'), '2024-12-01', '2024-12-10', 2, 1620.00, 'pendiente'),
((SELECT id FROM destinos WHERE nombre = 'Río de Janeiro'), '2024-08-20', '2024-08-27', 4, 700.00, 'confirmada'),
((SELECT id FROM destinos WHERE nombre = 'Dubái'), '2025-03-01', '2025-03-07', 2, 1750.00, 'confirmada'),
((SELECT id FROM destinos WHERE nombre = 'Londres'), '2024-09-25', '2024-09-30', 1, 800.00, 'cancelada'), -- Reserva cancelada
((SELECT id FROM destinos WHERE nombre = 'París'), '2025-02-01', '2025-02-05', 2, 600.00, 'pendiente'),
((SELECT id FROM destinos WHERE nombre = 'Tokio'), '2024-11-01', '2024-11-08', 3, 1000.00, 'confirmada'),
((SELECT id FROM destinos WHERE nombre = 'Nueva York'), '2025-04-10', '2025-04-17', 2, 1400.00, 'confirmada');
