-- Datos de practica: duelos contra jefes de un videojuego de accion y aventura.
-- El daño va subiendo con cada intento (curva de aprendizaje del jugador),
-- para que las funciones de ventana tengan datos con tendencia real.
USE campuslands_mysql;

INSERT INTO duelos_jefe_avanzado (jugador, jefe, danio_infligido, resultado, duracion_seg, fecha) VALUES
('Bram', 'Dragon de Ceniza', 1250, 'derrota', 185, '2026-01-05'),
('Bram', 'Dragon de Ceniza', 1550, 'derrota', 205, '2026-01-08'),
('Bram', 'Dragon de Ceniza', 2150, 'victoria', 245, '2026-01-12'),
('Bram', 'Señor de la Niebla', 1850, 'derrota', 155, '2026-02-01'),
('Isolde', 'Dragon de Ceniza', 1050, 'derrota', 165, '2026-01-06'),
('Isolde', 'Dragon de Ceniza', 1450, 'derrota', 195, '2026-01-10'),
('Isolde', 'Dragon de Ceniza', 1950, 'victoria', 225, '2026-01-14'),
('Isolde', 'Señor de la Niebla', 1650, 'derrota', 145, '2026-02-03'),
('Isolde', 'Señor de la Niebla', 2250, 'victoria', 215, '2026-02-10'),
('Corin', 'Dragon de Ceniza', 950, 'derrota', 155, '2026-01-07'),
('Corin', 'Señor de la Niebla', 1750, 'derrota', 150, '2026-02-02'),
('Corin', 'Señor de la Niebla', 2050, 'victoria', 205, '2026-02-09');
