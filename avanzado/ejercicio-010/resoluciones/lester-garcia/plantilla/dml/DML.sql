USE ejercicio_10_adv;

INSERT INTO runners (full_name, email, city) VALUES
('Juan Perez', 'juan@email.com', 'Bogota'),
('Maria Gomez', 'maria@email.com', 'Medellin'),
('Carlos Ruiz', 'carlos@email.com', 'Cali'),
('Laura Torres', 'laura@email.com', 'Barranquilla'),
('Andres Diaz', 'andres@email.com', 'Bucaramanga'),
('Sofia Lopez', 'sofia@email.com', 'Cartagena');

INSERT INTO races (race_name, race_date, location) VALUES
('Night Run', '2026-03-15', 'Bogota'),
('City Marathon', '2026-04-20', 'Medellin'),
('Urban Challenge', '2026-05-18', 'Cali'),
('Sunset Race', '2026-06-10', 'Barranquilla'),
('Fast Streets', '2026-07-08', 'Cartagena');

INSERT INTO categories (category_name, distance_km) VALUES
('5K', 5),
('10K', 10),
('15K', 15),
('21K', 21),
('42K', 42);

INSERT INTO registrations (runner_id, race_id, category_id, registration_fee) VALUES
(1, 1, 1, 40.00),
(2, 2, 2, 60.00),
(3, 3, 3, 80.00),
(4, 4, 2, 60.00),
(5, 5, 5, 120.00),
(6, 1, 1, 40.00);