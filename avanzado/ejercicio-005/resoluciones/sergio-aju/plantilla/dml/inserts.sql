USE db_taller_motos_indexes;

INSERT INTO mecanicos (nombre, especialidad, experiencia_anios) VALUES
('Carlos Ruiz', 'Motor', 8),
('Esteban Quito', 'Frenos y Suspensión', 5),
('Luis Miguel', 'Electricidad', 3),
('Andrés Gómez', 'Transmisión', 6);

INSERT INTO reparaciones (cliente, moto, costo, id_mecanico) VALUES
('Juan Pérez', 'Yamaha FZ16', 350.00, 1),
('Maria Gomez', 'Honda Navi', 120.50, 2),
('Pedro Pascal', 'Suzuki Gixxer', 450.00, 1),
('Ana Lopez', 'Kawasaki Z300', 890.00, 3),
('Carlos Vives', 'Pulsar NS200', 210.00, 2),
('Sofia Vergara', 'BMW G310R', 1250.00, 4),
('Lionel Messi', 'Honda CB190R', 310.00, 1),
('Cristiano Ronaldo', 'Ducati Scrambler', 1500.00, 4),
('Karol G', 'Yamaha R3', 480.00, 2),
('Bad Bunny', 'KTM Duke 200', 290.00, 3);