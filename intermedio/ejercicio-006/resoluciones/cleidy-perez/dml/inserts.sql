-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Autos (marca, modelo, anio_fabricacion, motor, potencia_hp, velocidad_max_kmh) VALUES
('Bugatti', 'Chiron Super Sport', 2022, '8.0L W16 Cuadriturbo', 1600, 440),
('Koenigsegg', 'Jesko Absolut', 2023, '5.0L V8 Biturbo', 1600, 530),
('Rimac', 'Nevera', 2022, '4 Motores Electricos', 1914, 412);

INSERT INTO EspecificacionesAvanzadas (auto_id, tipo_especificacion, detalle) VALUES
(1, 'Modo de Conduccion', 'Top Speed'),
(1, 'Modo de Conduccion', 'Handling'),
(1, 'Material del Chasis', 'Fibra de Carbono Monocasco'),
(2, 'Modo de Conduccion', 'Track'),
(2, 'Caracteristica', 'Aleron Activo'),
(3, 'Tipo de Carga', 'Carga Rapida 500 kW'),
(3, 'Caracteristica', 'Vectorizacion de Par Todoterreno');