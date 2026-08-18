-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- dml/inserts.sql
-- Inserción de datos de prueba para la tabla de hiperdeportivos.

USE hiperdeportivos_db;

INSERT INTO hiperdeportivos (marca, modelo, anio_lanzamiento, potencia_hp, velocidad_max_kmh, precio_usd, produccion_limitada) VALUES
('Bugatti', 'Chiron Super Sport 300+', 2019, 1578, 490, 3800000.00, TRUE),
('Koenigsegg', 'Jesko Absolut', 2020, 1600, 531, 3000000.00, TRUE),
('Hennessey', 'Venom F5', 2021, 1817, 500, 2100000.00, TRUE),
('Pagani', 'Huayra BC', 2017, 791, 383, 2550000.00, TRUE),
('Ferrari', 'SF90 Stradale', 2019, 986, 340, 625000.00, FALSE),
('Lamborghini', 'Aventador SVJ', 2018, 759, 350, 517770.00, TRUE),
('Porsche', '918 Spyder', 2013, 887, 345, 845000.00, TRUE),
('McLaren', 'P1', 2013, 903, 350, 1150000.00, TRUE);
