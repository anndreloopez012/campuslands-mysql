-- DML: Inserción de datos para paquetes turísticos
USE db_viajes_turismo;

INSERT INTO paquetes_turisticos (codigo_paquete, destino, continente, duracion_dias, precio_dolares, cupos_disponibles, estado) VALUES
('TOUR-01', 'Aventura en los Alpes Suizos', 'Europa', 7, 1850.00, 12, 'disponible'),
('TOUR-02', 'Playas Paradisíacas de Bali', 'Asia', 10, 1400.50, 4, 'ultimos_cupos'),
('TOUR-03', 'Safari Fotográfico en Kenia', 'África', 8, 2500.00, 0, 'sold_out'),
('TOUR-04', 'Exploración Histórica en Machu Picchu', 'América del Sur', 5, 950.00, 20, 'disponible'),
('TOUR-05', 'Ruta del Vino en Mendoza', 'América del Sur', 4, 720.00, 15, 'disponible'),
('TOUR-06', 'Luces del Norte en Tromsø', 'Europa', 6, 2100.00, 2, 'ultimos_cupos'),
('TOUR-07', 'Tokio y Templos de Kioto', 'Asia', 12, 3100.00, 8, 'disponible'),
('TOUR-08', 'Caribe Mexicano Todo Incluido', 'América del Norte', 7, 1150.00, 25, 'cancelado');