INSERT INTO destinos_turisticos (nombre_destino, pais, ciudad, clima_predominante) VALUES
('Isla de Flores y Tikal', 'Guatemala', 'Petén', 'Tropical'),
('Antigua Guatemala Histórica', 'Guatemala', 'Sacatepéquez', 'Templado'),
('Cancún Riviera', 'México', 'Cancún', 'Tropical');

INSERT INTO paquetes_turismo (destino_id, codigo_paquete, nombre_paquete, duracion_dias, precio_usd) VALUES
(1, 'PAQ-TIK-01', 'Aventura Maya Maya', 4, 450.00),
(2, 'PAQ-ANT-02', 'Escapada Colonial', 3, 280.00),
(3, 'PAQ-CAN-03', 'Caribe Relax', 5, 890.00);

INSERT INTO clientes_viajeros (pasaporte_dni, nombre_completo, email, telefono) VALUES
('A12345678', 'Ana María Torres', 'ana.torres@email.com', '+502 5555-1010'),
('B87654321', 'Jorge Mario Rivera', 'jorge.rivera@email.com', '+502 5555-2020'),
('C45678912', 'Elena Gómez', 'elena.gomez@email.com', '+502 5555-3030');

INSERT INTO reservas_viajes (cliente_id, paquete_id, fecha_reserva, fecha_viaje, estado_reserva) VALUES
(1, 1, '2026-08-01', '2026-09-10', 'Confirmada'),
(2, 2, '2026-08-05', '2026-08-25', 'Confirmada'),
(3, 3, '2026-08-10', '2026-10-01', 'Pendiente');