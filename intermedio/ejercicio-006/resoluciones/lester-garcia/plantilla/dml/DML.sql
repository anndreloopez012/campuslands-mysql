USE ejercicio_06_int;

INSERT INTO brands (brand_name, country) VALUES
('Bugatti', 'France'),
('Koenigsegg', 'Sweden'),
('Ferrari', 'Italy'),
('Lamborghini', 'Italy'),
('McLaren', 'United Kingdom');

INSERT INTO cars (model_name, production_year, horsepower, price, brand_id) VALUES
('Chiron', 2023, 1500, 3200000.00, 1),
('Jesko', 2024, 1600, 3500000.00, 2),
('SF90 Stradale', 2023, 1000, 650000.00, 3),
('Revuelto', 2024, 1015, 620000.00, 4),
('Speedtail', 2022, 1050, 2200000.00, 5),
('Gemera', 2024, 1700, 1800000.00, 2);

INSERT INTO customers (customer_name, city, phone) VALUES
('Carlos Mendoza', 'Madrid', '600111111'),
('Laura Gomez', 'Barcelona', '600222222'),
('Miguel Torres', 'Valencia', '600333333'),
('Ana Ruiz', 'Sevilla', '600444444'),
('David Lopez', 'Bilbao', '600555555'),
('Sofia Perez', 'Malaga', '600666666');

INSERT INTO sales (customer_id, car_id, sale_date) VALUES
(1, 1, '2026-01-15'),
(2, 3, '2026-02-10'),
(3, 2, '2026-03-08'),
(4, 4, '2026-04-20'),
(5, 5, '2026-05-12'),
(6, 6, '2026-06-18');