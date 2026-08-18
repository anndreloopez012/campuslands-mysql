-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Corredores (corredor_id, alias, correo, numero_competencia, nombre) VALUES
(1, 'NightRider', 'night@street.com', 7, 'Carlos Mendoza'),
(2, 'SpeedQueen', 'queen@street.com', 88, 'Elena Rostova'),
(3, 'DriftKing', 'drift@street.com', 99, 'Kenji Sato'),
(4, 'ShadowPhantom', 'shadow@street.com', 13, 'Marcus Vance'),
(5, 'ApexPredator', 'apex@street.com', 44, 'Sofia Lopez');

INSERT INTO Vehiculos (vehiculo_id, corredor_id, matricula, modelo, marca) VALUES
(1, 1, '34-GTR-01', 'Skyline GT-R R34', 'Nissan'),
(2, 2, 'SUP-99-99', 'Supra MK4', 'Toyota'),
(3, 3, 'RX7-DRIFT', 'RX-7 FD', 'Mazda'),
(4, 4, 'EVO-IX-99', 'Lancer Evolution IX', 'Mitsubishi'),
(5, 5, 'NSX-R-001', 'NSX Type R', 'Honda');