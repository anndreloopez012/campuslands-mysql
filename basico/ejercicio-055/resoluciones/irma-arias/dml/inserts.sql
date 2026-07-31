USE db_laboratorio_quimico;

-- Inserción de mínimo 8 registros variados de fórmulas y compuestos químicos
INSERT INTO formulas_quimicas (nombre_compuesto, formula_molecular, categoria, cantidad_gramos, costo_produccion_usd, estado) VALUES
('Ácido Sulfúrico Concentrado', 'H2SO4', 'Ácido', 500.00, 45.50, 'activo'),
('Hidróxido de Sodio', 'NaOH', 'Base', 1000.00, 30.00, 'activo'),
('Cloruro de Sodio Puro', 'NaCl', 'Sal', 2500.00, 12.50, 'activo'),
('Ácido Clorhídrico', 'HCl', 'Ácido', 750.00, 28.00, 'en_pruebas'),
('Etanol Anhidro', 'C2H5OH', 'Orgánico', 1200.00, 60.00, 'activo'),
('Carbonato de Calcio', 'CaCO3', 'Sal', 800.00, 18.50, 'obsoleto'),
('Ácido Acetilsalicílico', 'C9H8O4', 'Orgánico', 300.00, 120.00, 'activo'),
('Hidróxido de Magnesio', 'Mg(OH)2', 'Base', 450.00, 25.00, 'en_pruebas');