USE carreras_urbanas_db;

INSERT INTO categorias_carrera (nombre_categoria, distancia_km) VALUES
('Sprint Urbano 5K', 5.00),
('Reto 10K Ciudad', 10.00),
('Media Maratón Urbana', 21.09),
('Maratón Completa City', 42.19);

INSERT INTO corredores (nombre_completo, correo_electronico, telefono) VALUES
('Carlos Mendoza', 'carlos.mendoza@email.com', '3104567890'),
('María Fernanda Gómez', 'mafe.gomez@email.com', '3209876543'),
('Alejandro Restrepo', 'alejandro.restrepo@email.com', '3001234567'),
('Diana Sofía Pineda', 'diana.pineda@email.com', '3157891234'),
('Julián Andrés Henao', 'julian.henao@email.com', '3112345678'),
('Valeria Marín', 'valeria.marin@email.com', '3188765432'),
('Mateo Mosquera', 'mateo.mosquera@email.com', '3019871234'),
('Camila Andrea Ríos', 'camila.rios@email.com', '3165439870');

INSERT INTO inscripciones_carrera (id_corredor, id_categoria, numero_dorsal, tiempo_meta_minutos, estado_participacion) VALUES
(1, 1, 101, 21.50, 'completado'),
(2, 1, 102, 24.30, 'completado'),
(3, 2, 205, 42.10, 'completado'),
(4, 2, 208, 48.20, 'completado'),
(5, 3, 310, 95.40, 'completado'),
(6, 3, 315, 102.50, 'completado'),
(7, 4, 401, 185.00, 'completado'),
(8, 1, 103, NULL, 'inscrito');
