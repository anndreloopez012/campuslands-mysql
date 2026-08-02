USE formulas_quimicas_db;

INSERT INTO formulas_quimicas (nombre_compuesto, tipo_enlace, cantidad_atomos, costo_produccion_usd, pureza_porcentaje, estado) VALUES
('Acido Sulfurico', 'Covalente Polar', 7, 150.50, 98.50, 'sintetizado'),
('Cloruro de Sodio', 'Iónico', 2, 45.00, 99.90, 'sintetizado'),
('Agua Oxigenada', 'Covalente Polar', 4, 85.20, 95.00, 'en_pruebas'),
('Dioxido de Carbono', 'Covalente', 3, 60.00, 97.20, 'sintetizado'),
('Glucosa', 'Covalente', 24, 320.00, 96.80, 'sintetizado'),
('Amoniaco', 'Covalente Polar', 4, 110.00, 94.50, 'en_pruebas'),
('Sulfato de Cobre', 'Iónico', 6, 210.00, 98.10, 'sintetizado'),
('Metano', 'Covalente Apolar', 5, 90.00, 92.00, 'descartado');
