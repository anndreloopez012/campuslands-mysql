USE hiperdeportivos_2fn_db;

INSERT INTO fabricantes (nombre_fabricante, pais_origen) VALUES
('Bugatti', 'Francia'),
('Koenigsegg', 'Suecia'),
('Rimac', 'Croacia'),
('Pagani', 'Italia');

INSERT INTO caracteristicas_motor (tipo_motor, aspiracion) VALUES
('W16 8.0L', 'Cuatriturbo'),
('V8 5.0L', 'Biturbo'),
('Motor Electrico Cuadruple', 'Electrico'),
('V12 6.0L', 'Atmosferico');

INSERT INTO hiperdeportivos_2fn (modelo, potencia_hp, velocidad_max_kmh, precio_usd, id_fabricante, id_motor, estado_produccion) VALUES
('Bugatti Chiron Super Sport 300+', 1600, 490, 3900000.00, 1, 1, 'limitado'),
('Bugatti Bolide', 1825, 500, 4400000.00, 1, 1, 'concept'),
('Koenigsegg Jesko Absolut', 1600, 531, 3400000.00, 2, 2, 'en_produccion'),
('Koenigsegg Regera', 1500, 410, 2900000.00, 2, 2, 'descontinuado'),
('Rimac Nevera', 1914, 412, 2400000.00, 3, 3, 'en_produccion'),
('Pagani Huayra R', 850, 383, 3100000.00, 4, 4, 'limitado'),
('Pagani Utopia', 864, 370, 2500000.00, 4, 4, 'en_produccion'),
('Bugatti Divo', 1500, 380, 5400000.00, 1, 1, 'descontinuado');
