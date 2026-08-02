USE equipo_streaming_db;

INSERT INTO marcas_streaming (nombre_marca, pais_origen) VALUES
('Elgato', 'Alemania'),
('Logitech', Suiza),
('Razer', 'Estados Unidos'),
('HyperX', 'Estados Unidos');

INSERT INTO equipos_streaming (nombre_equipo, tipo_dispositivo, precio_usd, id_marca, estado) VALUES
('Stream Deck MK.2', 'Controlador', 149.99, 1, 'disponible'),
('Camara Web Brio 4K', 'Camara', 199.00, 2, 'en_oferta'),
('Microfono QuadCast S', 'Microfono', 159.99, 4, 'disponible'),
('Key Light Air', 'Iluminacion', 129.99, 1, 'disponible'),
('Microfono Seiren V2 Pro', 'Microfono', 139.99, 3, 'agotado'),
('Camara Facecam Pro', 'Camara', 299.99, 1, 'en_oferta'),
('Audifonos Cloud III', 'Audio', 99.99, 4, 'disponible'),
('Luz de Anillo Ring Light', 'Iluminacion', 79.99, 3, 'agotado');
