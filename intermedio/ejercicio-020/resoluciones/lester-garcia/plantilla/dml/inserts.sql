USE ejercicio_20_int;

INSERT INTO clientes (nombre, telefono,correo
) VALUES
('Carlos Méndez', '3001112233', 'carlos@email.com'),
('Laura Gómez', '3012223344', 'laura@email.com'),
('Andrés Castillo', '3023334455', 'andres@email.com'),
('María Torres', '3034445566', 'maria@email.com'),
('Sofía Morales', '3045556677', 'sofia@email.com'),
('Daniel Herrera', '3056667788', 'daniel@email.com');

INSERT INTO tatuadores (nombre, especialidad, experiencia_anios
) VALUES
('Julián Vargas', 'Realismo', 10),
('Camila Rojas', 'Blackwork', 7),
('Mateo Salazar', 'Tradicional', 12),
('Valentina Cruz', 'Minimalista', 5),
('Sebastián Torres', 'Geométrico', 8),
('Natalia Pérez', 'Realismo', 9);

INSERT INTO estilos (nombre, descripcion
) VALUES
('Realismo', 'Diseños con alto nivel de detalle y apariencia realista'),
('Blackwork', 'Diseños realizados principalmente con tinta negra'),
('Tradicional', 'Diseños inspirados en el estilo tradicional'),
('Minimalista', 'Diseños pequeños con líneas simples'),
('Geométrico', 'Diseños basados en figuras y patrones geométricos'),
('Acuarela', 'Diseños inspirados en técnicas de pintura con acuarela');

INSERT INTO tatuajes (id_tatuador, id_estilo, nombre_diseno, precio,duracion_horas
) VALUES
(1, 1, 'Retrato Realista', 850000.00, 6.00),
(2, 2, 'Lobo Blackwork', 650000.00, 4.50),
(3, 3, 'Rosa Tradicional', 420000.00, 3.00),
(4, 4, 'Luna Minimalista', 250000.00, 1.50),
(5, 5, 'Mandalas Geométricos', 580000.00, 4.00),
(6, 1, 'León Realista', 950000.00, 7.00),
(2, 2, 'Serpiente Blackwork', 720000.00, 5.00),
(4, 4, 'Estrella Minimalista', 180000.00, 1.00);

INSERT INTO citas ( id_cliente, id_tatuaje, fecha_cita, estado
) VALUES
(1, 1, '2026-08-01', 'Completada'),
(2, 2, '2026-08-03', 'Completada'),
(3, 3, '2026-08-05', 'Agendada'),
(4, 4, '2026-08-07', 'Completada'),
(5, 5, '2026-08-10', 'Agendada'),
(6, 6, '2026-08-12', 'Completada'),
(1, 7, '2026-08-15', 'Completada'),
(2, 8, '2026-08-18', 'Cancelada');