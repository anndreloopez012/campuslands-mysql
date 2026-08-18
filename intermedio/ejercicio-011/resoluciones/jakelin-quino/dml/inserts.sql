-- Jugadores válidos
INSERT INTO `ejercicio-011-int-jugadores` 
(nombre, edad, nivel, partidos, victorias, derrotas, puntaje) VALUES 
('Carlos Pérez', 25, 'profesional', 50, 35, 15, 2800),
('María López', 22, 'avanzado', 40, 28, 12, 2200),
('Juan Rivas', 30, 'intermedio', 35, 18, 17, 1500),
('Ana Torres', 19, 'principiante', 20, 8, 12, 800),
('Luis Soto', 28, 'avanzado', 45, 30, 15, 2400),
('Sofía Cruz', 35, 'intermedio', 30, 16, 14, 1600);

-- Insertar datos inválidos (NO FUNCIONARÁ)
-- INSERT INTO `ejercicio-011-int-jugadores` 
-- (nombre, edad, nivel, partidos, victorias, derrotas, puntaje) 
-- VALUES ('Test', 85, 'profesional', 10, 5, 5, 1000);  -- Edad > 80

-- INSERT INTO `ejercicio-011-int-jugadores` 
-- (nombre, edad, nivel, partidos, victorias, derrotas, puntaje) 
-- VALUES ('Test', 20, 'experto', 10, 5, 5, 1000);  -- Nivel no existe

-- INSERT INTO `ejercicio-011-int-jugadores` 
-- (nombre, edad, nivel, partidos, victorias, derrotas, puntaje) 
-- VALUES ('Test', 20, 'principiante', 10, 8, 3, 1000);  -- victorias+derrotas > partidos