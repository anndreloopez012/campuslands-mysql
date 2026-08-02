USE kickboxing_db;

INSERT INTO gimnasios (nombre_gimnasio, ciudad, entrenador_principal) VALUES
('Tiger Muay Thai & Kickboxing', 'Bogotá', 'Carlos Duarte'),
('Glory Striking Academy', 'Medellín', 'Mateo Morales'),
('Iron Fist Gym', 'Cali', 'Alejandro Restrepo'),
('Apex Combat Center', 'Bucaramanga', 'Diana Salazar');

INSERT INTO categorias_peso (nombre_categoria, limite_peso_kg) VALUES
('Peso Pluma', 65.00),
('Peso Ligero', 70.00),
('Peso Welter', 77.00),
('Peso Mediano', 85.00);

INSERT INTO peleadores_kickboxing (nombre_peleador, edad, peleas_ganadas, peleas_perdidas, id_gimnasio, id_categoria, estado_peleador) VALUES
('Johan Estupiñán', 23, 18, 2, 1, 1, 'activo'),
('Stiven Castañeda', 26, 15, 4, 2, 2, 'activo'),
('Rodrigo Freitas', 28, 22, 5, 3, 3, 'activo'),
('Daniel Barragan', 24, 12, 3, 4, 1, 'activo'),
('Camilo Rincón', 29, 25, 7, 1, 4, 'activo'),
('Felipe Montoya', 21, 9, 4, 2, 2, 'lesionado'),
('Esteban Quintero', 27, 19, 6, 3, 3, 'suspendido'),
('Brayan Serna', 25, 14, 2, 4, 4, 'activo');
