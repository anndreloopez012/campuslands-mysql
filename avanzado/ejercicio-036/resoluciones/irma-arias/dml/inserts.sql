-- DML: Inserción de datos para autos hiperdeportivos
USE db_hiperdeportivos;

INSERT INTO autos_hiperdeportivos (codigo_chasis, marca, modelo, velocidad_maxima_kmh, precio_millones, anio_fabricacion, estado_disponibilidad) VALUES
('BUG-001', 'Bugatti', 'Chiron Super Sport', 440, 3.89, 2023, 'disponible'),
('KOE-002', 'Koenigsegg', 'Jesko Absolut', 455, 3.40, 2024, 'reservado'),
('PAC-003', 'Pagani', 'Utopia', 380, 2.50, 2023, 'vendido'),
('REM-004', 'Rimac', 'Nevera', 412, 2.20, 2024, 'disponible'),
('FER-005', 'Ferrari', 'Daytona SP3', 340, 2.25, 2022, 'exhibicion'),
('LAM-006', 'Lamborghini', 'Sián FKP 37', 350, 3.70, 2021, 'vendido'),
('LOT-007', 'Lotus', 'Evija', 320, 2.30, 2023, 'disponible'),
('AST-008', 'Aston Martin', 'Valkyrie', 402, 3.50, 2023, 'reservado');