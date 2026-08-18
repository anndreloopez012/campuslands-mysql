USE campuslands_mysql;

INSERT INTO autos_hiperdeportivos_1fn (marca, modelo, potencia_hp, precio, estado) VALUES
('Bugatti',    'Chiron',    1500, 3000000.00, 'agotado'),
('Koenigsegg', 'Jesko',     1600, 2800000.00, 'preventa'),
('Pagani',     'Huayra',    730,  2600000.00, 'agotado'),
('McLaren',    'Speedtail', 1035, 2250000.00, 'disponible');

-- Cada color va en una fila independiente (valores atomicos, 1FN correcto)
INSERT INTO auto_colores_disponibles (id_auto, color) VALUES
(1, 'Negro'),
(1, 'Rojo'),
(1, 'Azul Francia'),
(2, 'Blanco'),
(2, 'Verde Militar'),
(3, 'Gris Titanio'),
(4, 'Negro'),
(4, 'Naranja');