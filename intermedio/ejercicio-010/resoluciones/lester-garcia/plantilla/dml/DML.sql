 USE ejercicio_10_int;

INSERT INTO runners (full_name, email, phone) VALUES
('Juan Perez', 'juan.perez@email.com', '3001111111'),
('Maria Gomez', 'maria.gomez@email.com', '3002222222'),
('Carlos Ruiz', 'carlos.ruiz@email.com', '3003333333'),
('Laura Torres', 'laura.torres@email.com', '3004444444'),
('Andres Diaz', 'andres.diaz@email.com', '3005555555'),
('Sofia Lopez', 'sofia.lopez@email.com', '3006666666');

INSERT INTO races (race_name, race_date, location) VALUES
('Night Run', '2026-03-15', 'Bogota'),
('City Marathon', '2026-04-10', 'Medellin'),
('Urban Challenge', '2026-05-08', 'Cali'),
('Sunset Race', '2026-06-20', 'Barranquilla'),
('Fast Streets', '2026-07-12', 'Cartagena');

INSERT INTO categories (category_name, distance_km) VALUES
('5K', 5),
('10K', 10),
('15K', 15),
('21K', 21),
('42K', 42);

INSERT INTO registrations (runner_id, race_id, category_id, bib_number) VALUES
(1, 1, 1, 101),
(2, 2, 2, 102),
(3, 3, 3, 103),
(4, 4, 2, 104),
(5, 5, 5, 105),
(6, 1, 1, 106);