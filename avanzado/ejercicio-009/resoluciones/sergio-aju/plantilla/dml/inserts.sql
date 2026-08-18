-- Carga de datos para el módulo de kickboxing.
USE campuslands_mysql;

INSERT INTO ejercicio_009_kickboxing_peleadores (nombre, categoria_peso, victorias, derrotas, kos, bolsa_acumulada_usd, estado) VALUES
('Rico Verhoeven', 'Pesado', 60, 10, 20, 2500000.00, 'activo'),
('Giorgio Petrosyan', 'Welter', 105, 2, 42, 1800000.00, 'activo'),
('Badr Hari', 'Pesado', 106, 17, 92, 2100000.00, 'retirado'),
('Gökhan Saki', 'Semi-Pesado', 83, 16, 59, 1200000.00, 'retirado'),
('Artem Vakhitov', 'Semi-Pesado', 23, 6, 8, 850000.00, 'activo'),
('Alex Pereira', 'Mediano', 33, 7, 21, 1900000.00, 'activo'),
('Cedric Doumbe', 'Welter', 75, 7, 45, 950000.00, 'activo'),
('Alistair Overeem', 'Pesado', 10, 4, 7, 1500000.00, 'suspendido'),
('Donovan Wisse', 'Mediano', 20, 1, 10, 600000.00, 'activo'),
('Anissa Meksen', 'Welter', 103, 6, 33, 750000.00, 'activo');