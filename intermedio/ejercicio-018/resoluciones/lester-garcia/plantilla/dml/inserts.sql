USE ejercicio_18_int;

INSERT INTO clientes ( nombre, correo, telefono
) VALUES
('Carlos Méndez', 'carlos@email.com', '3001112233'),
('Laura Gómez', 'laura@email.com', '3012223344'),
('Andrés Castillo', 'andres@email.com', '3023334455'),
('María Torres', 'maria@email.com', '3034445566'),
('Sofía Morales', 'sofia@email.com', '3045556677'),
('Daniel Herrera', 'daniel@email.com', '3056667788');

INSERT INTO destinos (ciudad, pais, continente
) VALUES
('Cartagena', 'Colombia', 'América'),
('Ciudad de México', 'México', 'América'),
('Madrid', 'España', 'Europa'),
('París', 'Francia', 'Europa'),
('Tokio', 'Japón', 'Asia'),
('Buenos Aires', 'Argentina', 'América');

INSERT INTO viajes ( id_destino, nombre_viaje, fecha_salida, duracion_dias,precio
) VALUES
(1, 'Cartagena Caribe', '2026-09-10', 5, 1850000.00),
(2, 'Experiencia Ciudad de México', '2026-09-18', 6, 2200000.00),
(3, 'Madrid Cultural', '2026-10-05', 8, 4200000.00),
(4, 'París Romántico', '2026-10-15', 7, 5100000.00),
(5, 'Tokio Tradicional', '2026-11-01', 10, 6800000.00),
(6, 'Buenos Aires Gastronómico', '2026-09-25', 6, 2600000.00),
(1, 'Cartagena Familiar', '2026-11-10', 4, 1500000.00),
(3, 'Madrid Histórico', '2026-12-01', 6, 3500000.00);

INSERT INTO reservas (id_cliente, id_viaje, fecha_reserva, cantidad_personas, estado
) VALUES
(1, 1, '2026-08-01', 2, 'Confirmada'),
(2, 1, '2026-08-02', 3, 'Confirmada'),
(3, 2, '2026-08-03', 2, 'Pendiente'),
(4, 3, '2026-08-04', 4, 'Confirmada'),
(5, 4, '2026-08-05', 2, 'Confirmada'),
(6, 5, '2026-08-06', 1, 'Pendiente'),
(1, 6, '2026-08-07', 3, 'Confirmada'),
(2, 7, '2026-08-08', 4, 'Cancelada'),
(3, 8, '2026-08-09', 2, 'Confirmada'),
(4, 2, '2026-08-10', 3, 'Confirmada');