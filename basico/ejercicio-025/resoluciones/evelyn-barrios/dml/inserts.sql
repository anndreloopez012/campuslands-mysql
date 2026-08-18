-- dml/inserts.sql
-- Inserción de datos de prueba para el inventario de compuestos.

USE laboratorio_quimico;

INSERT INTO inventario_compuestos (nombre_compuesto, formula_quimica, tipo_compuesto, cantidad_disponible_gramos, fecha_adquisicion, ubicacion_almacen) VALUES
('Ácido Sulfúrico', 'H2SO4', 'Reactivo', 550.50, '2025-01-15', 'Estante A-1'),
('Etanol', 'C2H5OH', 'Solvente', 1500.00, '2024-11-20', 'Gabinete B-3'),
('Cloruro de Sodio', 'NaCl', 'Reactivo', 2500.75, '2025-02-01', 'Estante A-2'),
('Agua Destilada', 'H2O', 'Solvente', 10000.00, '2024-10-05', 'Gabinete B-1'),
('Hidróxido de Sodio', 'NaOH', 'Reactivo', 320.00, '2025-03-10', 'Estante A-1'),
('Platino', 'Pt', 'Catalizador', 50.25, '2024-09-12', 'Caja Fuerte-1'),
('Glucosa', 'C6H12O6', 'Producto', 150.50, '2025-04-22', 'Estante C-4'),
('Ácido Clorhídrico', 'HCl', 'Reactivo', 800.00, '2025-01-25', 'Estante A-2'),
('Amoníaco', 'NH3', 'Reactivo', 450.00, '2025-03-18', 'Gabinete de Gases');