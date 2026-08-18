-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- basico/ejercicio-006 - evelyn-barrios
-- Se reemplazan los datos de la plantilla por registros de hiperdeportivos.
USE campuslands_mysql;

-- Insertar datos en la tabla de hiperdeportivos
INSERT INTO hiperdeportivos (marca, modelo, anio, velocidad_max_kmh, aceleracion_0_100_s, precio_usd, pais_origen, produccion_limitada, estado) VALUES
('Bugatti', 'Chiron Super Sport 300+', 2021, 490, 2.4, 3900000.00, 'Francia', TRUE, 'vendido'),
('Koenigsegg', 'Jesko Absolut', 2022, 531, 2.5, 3000000.00, 'Suecia', TRUE, 'en_produccion'),
('Hennessey', 'Venom F5', 2021, 500, 2.6, 2100000.00, 'EE.UU.', TRUE, 'en_produccion'),
('SSC North America', 'Tuatara', 2020, 455, 2.5, 1900000.00, 'EE.UU.', TRUE, 'vendido'),
('Rimac', 'Nevera', 2022, 412, 1.9, 2400000.00, 'Croacia', TRUE, 'disponible'),
('Pagani', 'Huayra', 2012, 383, 2.8, 1400000.00, 'Italia', TRUE, 'vendido'),
('McLaren', 'Speedtail', 2020, 403, 3.0, 2250000.00, 'Reino Unido', TRUE, 'vendido'),
('Aston Martin', 'Valkyrie', 2021, 402, 2.5, 3000000.00, 'Reino Unido', TRUE, 'en_produccion'),
('Ferrari', 'SF90 Stradale', 2020, 340, 2.5, 625000.00, 'Italia', FALSE, 'disponible'),
('Lamborghini', 'Sian FKP 37', 2020, 350, 2.8, 3600000.00, 'Italia', TRUE, 'vendido');
