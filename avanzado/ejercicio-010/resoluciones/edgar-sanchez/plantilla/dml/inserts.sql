INSERT INTO circuitos_urbanos (nombre_circuito, ciudad, longitud_km) VALUES
('Maratón Nocturna Centro Histórico', 'Madrid', 10.00),
('Gran Carrera Malecón 15K', 'Barcelona', 15.00),
('Circuito Urbano Financiero 5K', 'Valencia', 5.00);

INSERT INTO corredores_urbanos (dni_pasaporte, email, nombre_completo, edad) VALUES
('12345678A', 'carlos.mora@email.com', 'Carlos Mora', 28),
('87654321B', 'sofia.lopez@email.com', 'Sofía López', 32),
('45678912C', 'mateo.torres@email.com', 'Mateo Torres', 22),
('98765432D', 'lucia.gomez@email.com', 'Lucía Gómez', 41);

INSERT INTO inscripciones_carreras (circuito_id, corredor_id, numero_dorsal, categoria, tiempo_minutos) VALUES
(1, 1, 101, 'Elite', 34.50),
(1, 2, 102, 'Master', 42.10),
(1, 3, 103, 'Amateur', 48.00),
(2, 1, 201, 'Elite', 52.30),
(2, 4, 202, 'Master', 65.15),
(3, 3, 301, 'Amateur', 21.40);
