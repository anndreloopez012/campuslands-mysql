-- Datos de practica para biblioteca gamer (Simulacion de Carga de Datos).
USE campuslands_mysql;

-- 1. Estado inicial de la biblioteca en produccion
INSERT INTO intermedio_ejercicio_015_juegos_produccion (codigo_sku, titulo, desarrollador, precio_usd) 
    VALUES ('GM-001', 'The Witcher 3: Wild Hunt', 'CD Projekt Red', 39.99),
    ('GM-002', 'Minecraft', 'Mojang', 19.99),
    ('GM-003', 'Grand Theft Auto V', 'Rockstar Games', 29.99);
    

-- 2. Lote de datos entrantes en la tabla Staging (Simulando un archivo CSV recien cargado)
-- Contiene juegos nuevos y actualizaciones de precio para juegos existentes
INSERT INTO intermedio_ejercicio_015_juegos_staging (codigo_sku, titulo, desarrollador, precio_usd) 
    VALUES ('GM-001', 'The Witcher 3: Wild Hunt', 'CD Projekt Red', 19.99), -- Actualizacion: Bajo de precio
    ('GM-003', 'Grand Theft Auto V', 'Rockstar Games', 29.99),       -- Sin cambios
    ('GM-004', 'Elden Ring', 'FromSoftware', 59.99),                 -- Juego Nuevo
    ('GM-005', 'Hollow Knight', 'Team Cherry', 14.99),               -- Juego Nuevo
    ('GM-006', 'Stardew Valley', 'ConcernedApe', 14.99);             -- Juego Nuevo