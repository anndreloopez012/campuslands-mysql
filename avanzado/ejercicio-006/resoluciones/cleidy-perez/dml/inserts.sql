-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Marcas (nombre, pais_origen) VALUES
('Bugatti', 'Francia'),
('Koenigsegg', 'Suecia'),
('Rimac', 'Croacia');

INSERT INTO Hiperdeportivos (marca_id, modelo, velocidad_max_kmh, potencia_hp) VALUES
(1, 'Chiron Super Sport 300+', 490, 1600),
(1, 'Veyron Grand Sport', 407, 1001),
(2, 'Jesko Absolut', 530, 1600),
(2, 'Regera', 404, 1500),
(3, 'Nevera', 412, 1914);