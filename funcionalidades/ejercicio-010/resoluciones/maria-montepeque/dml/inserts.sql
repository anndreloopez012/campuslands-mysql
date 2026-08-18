-- funcionalidades/ejercicio-010 - maria-montepeque
USE campuslands_mysql;

INSERT INTO destinos_turisticos (nombre, pais, categoria) VALUES
    ('Cartagena', 'Colombia', 'Playa'),
    ('Bariloche', 'Argentina', 'Montana'),
    ('Cusco', 'Peru', 'Cultural'),
    ('Cancun', 'Mexico', 'Playa'),
    ('Paris', 'Francia', 'Ciudad'),
    ('Kyoto', 'Japon', 'Cultural'),
    ('Banff', 'Canada', 'Montana'),
    ('Bali', 'Indonesia', 'Playa');

-- 25 reservas. Ojo: Carlos Mora (Cartagena) y Luis Prada (Cusco) quedan a
-- proposito con el mismo costo_total (1500.00) para poder comparar RANK vs
-- DENSE_RANK cuando hay empate.
INSERT INTO reservas_viaje (destino_id, viajero, fecha_reserva, noches, costo_total) VALUES
    -- Cartagena (1)
    (1, 'Ana Beltran', '2026-01-10', 4, 1200.00),
    (1, 'Carlos Mora', '2026-02-14', 5, 1500.00),
    (1, 'Elena Rios', '2026-03-02', 3, 950.00),
    (1, 'Felipe Ortiz', '2026-05-20', 6, 1750.00),
    -- Bariloche (2)
    (2, 'Gabriela Fon', '2026-01-25', 7, 2100.00),
    (2, 'Hugo Paz', '2026-02-18', 5, 1800.00),
    (2, 'Ines Vidal', '2026-04-05', 8, 2400.00),
    -- Cusco (3)
    (3, 'Jorge Salinas', '2026-01-15', 4, 900.00),
    (3, 'Karen Duque', '2026-03-22', 5, 1100.00),
    (3, 'Luis Prada', '2026-06-10', 6, 1500.00),
    -- Cancun (4)
    (4, 'Marta Solis', '2026-02-01', 5, 1600.00),
    (4, 'Nestor Leiva', '2026-03-15', 7, 2200.00),
    (4, 'Olga Reyes', '2026-04-28', 6, 1950.00),
    (4, 'Pablo Nunez', '2026-07-05', 4, 1300.00),
    -- Paris (5)
    (5, 'Queralt Amor', '2026-01-08', 6, 2600.00),
    (5, 'Ricardo Vega', '2026-02-27', 5, 2300.00),
    (5, 'Sara Blanco', '2026-05-14', 7, 2900.00),
    -- Kyoto (6)
    (6, 'Tomas Rueda', '2026-01-30', 6, 1700.00),
    (6, 'Ursula Campo', '2026-04-11', 5, 1450.00),
    -- Banff (7)
    (7, 'Victor Osma', '2026-02-09', 6, 2000.00),
    (7, 'Wendy Cruz', '2026-03-30', 8, 2500.00),
    (7, 'Ximena Roa', '2026-06-22', 6, 1900.00),
    -- Bali (8)
    (8, 'Yolanda Prat', '2026-01-19', 5, 1350.00),
    (8, 'Zacarias Nova', '2026-04-02', 6, 1600.00),
    (8, 'Aitor Mena', '2026-07-11', 7, 1850.00);
