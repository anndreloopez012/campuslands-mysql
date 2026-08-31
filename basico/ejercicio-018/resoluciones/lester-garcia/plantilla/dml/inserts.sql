USE ejercicio_18;


INSERT INTO destinos
(nombre, pais, ciudad, descripcion)
VALUES
('Paraíso Caribeño', 'Colombia', 'Cartagena', 'Playas, historia y turismo cultural'),
('Aventura Andina', 'Perú', 'Cusco', 'Montañas, cultura y sitios arqueológicos'),
('Ciudad de la Luz', 'Francia', 'Paris', 'Turismo urbano, arte y gastronomía'),
('Experiencia Tropical', 'Brasil', 'Rio de Janeiro', 'Playas, naturaleza y entretenimiento'),
('Ruta Europea', 'Italia', 'Roma', 'Historia, arquitectura y gastronomía');

INSERT INTO clientes
(nombre, correo, telefono)
VALUES
('Carlos Méndez', 'carlos@email.com', '5551-1020'),
('Ana López', 'ana@email.com', '5552-2030'),
('Luis García', 'luis@email.com', '5553-3040'),
('María Torres', 'maria@email.com', '5554-4050'),
('Pedro Ramírez', 'pedro@email.com', '5555-5060');

INSERT INTO paquetes
(nombre, precio, duracion_dias, id_destino)
VALUES
('Cartagena Todo Incluido', 850.00, 5, 1),
('Cusco Aventura', 1200.00, 7, 2),
('Paris Cultural', 1800.00, 6, 3),
('Rio Tropical', 1100.00, 5, 4),
('Roma Historica', 1600.00, 7, 5);

INSERT INTO reservas
(id_cliente, id_paquete, fecha_reserva, cantidad_personas, estado)
VALUES
(1, 1, '2026-08-01', 2, 'Confirmada'),
(2, 2, '2026-08-03', 3, 'Pendiente'),
(3, 3, '2026-08-05', 1, 'Confirmada'),
(4, 4, '2026-08-07', 4, 'Cancelada'),
(5, 5, '2026-08-10', 2, 'Confirmada');