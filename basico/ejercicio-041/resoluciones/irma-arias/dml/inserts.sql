USE db_pingpong_torneo;

-- Inserción de mínimo 8 registros variados de jugadores de ping pong
INSERT INTO jugadores_pingpong (nombre_jugador, nivel_categoria, partidos_ganados, partidos_perdidos, ranking_puntos, estado, fecha_registro) VALUES
('Ma Long', 'Profesional', 45, 5, 2850, 'activo', '2025-01-15'),
('Fan Zhendong', 'Profesional', 42, 8, 2720, 'activo', '2025-01-18'),
('Timo Boll', 'Avanzado', 35, 12, 2350, 'activo', '2025-02-10'),
('Hugo Calderano', 'Avanzado', 30, 15, 2150, 'activo', '2025-02-12'),
('Tomokazu Harimoto', 'Intermedio', 22, 18, 1850, 'activo', '2025-03-01'),
('Truls Möregårdh', 'Intermedio', 19, 20, 1720, 'activo', '2025-03-05'),
('Adriana Díaz', 'Principiante', 10, 22, 1400, 'suspendido', '2025-04-01'),
('Felix Lebrun', 'Avanzado', 28, 10, 2050, 'activo', '2025-04-10');