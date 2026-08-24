USE ejercicio_18_adv;

INSERT INTO destinations ( destination_name, country, category
) VALUES
('Cartagena', 'Colombia', 'Beach'),
('Paris', 'France', 'Cultural'),
('Cancun', 'Mexico', 'Beach'),
('Rome', 'Italy', 'Historical'),
('Tokyo', 'Japan', 'Urban'),
('New York', 'United States', 'Urban');

INSERT INTO travelers (traveler_name, email
) VALUES
('Carlos Martinez', 'carlos@email.com'),
('Laura Gomez', 'laura@email.com'),
('Andres Ramirez', 'andres@email.com'),
('Sofia Torres', 'sofia@email.com'),
('Miguel Herrera', 'miguel@email.com'),
('Valentina Ruiz', 'valentina@email.com');

INSERT INTO trips ( traveler_id, destination_id, travel_date, days, total_cost
) VALUES
(1, 1, '2026-01-15', 5, 1800000.00),
(2, 2, '2026-02-10', 7, 4200000.00),
(3, 3, '2026-03-05', 6, 2800000.00),
(4, 4, '2026-04-12', 8, 4500000.00),
(5, 5, '2026-05-20', 10, 6200000.00),
(6, 6, '2026-06-15', 7, 5100000.00);