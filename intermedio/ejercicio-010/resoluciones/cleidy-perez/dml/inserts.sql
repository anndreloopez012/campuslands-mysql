-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Corredores (alias, correo, numero_competencia, nombre) VALUES
('NightRider', 'night@street.com', 7, 'Carlos Mendoza'),
('SpeedQueen', 'queen@street.com', 88, 'Elena Rostova'),
('DriftKing', 'drift@street.com', 99, 'Kenji Sato');

INSERT INTO Vehiculos (corredor_id, matricula, modelo, marca) VALUES
(1, '34-GTR-01', 'Skyline GT-R R34', 'Nissan'),
(2, 'SUP-99-99', 'Supra MK4', 'Toyota'),
(3, 'RX7-DRIFT', 'RX-7 FD', 'Mazda');