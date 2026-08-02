USE kickboxing_db;

INSERT INTO categorias_peso (nombre_categoria, peso_limite_kg) VALUES
('Peso Pluma', 60.00),
('Peso Ligero', 70.00),
('Peso Welter', 78.00),
('Peso Mediano', 85.00);

INSERT INTO luchadores_kickboxing (nombre_luchador, peleas_ganadas, peleas_perdidas, id_categoria, estado) VALUES
('Giorgio Petrosyan', 104, 3, 2, 'activo'),
('Buakaw Banchamek', 240, 24, 2, 'activo'),
('Superbon Singha Mawynn', 114, 35, 2, 'activo'),
('Rico Verhoeven', 63, 10, 4, 'activo'),
('Alex Pereira', 33, 7, 3, 'retirado'),
('Tarel Khbabez', 49, 10, 4, 'lesionado'),
('Petchpanomrung Kiatmuu9', 168, 39, 1, 'activo'),
('Hiroki Akimoto', 26, 2, 1, 'activo');
