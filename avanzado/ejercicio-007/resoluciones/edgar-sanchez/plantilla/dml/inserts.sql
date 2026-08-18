INSERT INTO equipos_futbol (nombre_equipo, ciudad, estadio, anio_fundacion) VALUES
('Real Madrid', 'Madrid', 'Santiago Bernabéu', 1902),
('FC Barcelona', 'Barcelona', 'Spotify Camp Nou', 1899),
('Atlético de Madrid', 'Madrid', 'Riyadh Air Metropolitano', 1903);

INSERT INTO jugadores_futbol (equipo_id, nombre_completo, posicion, salario_anual_usd) VALUES
(1, 'Kylian Mbappé', 'Delantero', 31200000.00),
(1, 'Jude Bellingham', 'Centrocampista', 20800000.00),
(2, 'Robert Lewandowski', 'Delantero', 27000000.00),
(2, 'Lamine Yamal', 'Delantero', 16700000.00),
(3, 'Antoine Griezmann', 'Delantero', 12500000.00);

INSERT INTO partidos_liga (equipo_local_id, equipo_visitante_id, goles_local, goles_visitante, fecha_partido) VALUES
(1, 2, 3, 2, '2026-03-15'),
(2, 3, 1, 1, '2026-04-10'),
(3, 1, 0, 2, '2026-05-02');

INSERT INTO rendimiento_jugadores_partido (partido_id, jugador_id, minutos_jugados, goles_anotados, asistencias, tarjetas_amarillas, tarjetas_rojas) VALUES
(1, 1, 90, 2, 0, 0, 0),
(1, 2, 90, 1, 1, 1, 0),
(1, 3, 90, 1, 1, 0, 0),
(1, 4, 80, 1, 0, 0, 0),
(2, 3, 90, 1, 0, 1, 0),
(2, 5, 90, 1, 0, 0, 0),
(3, 1, 90, 1, 1, 0, 0),
(3, 2, 85, 1, 0, 0, 0),
(3, 5, 90, 0, 0, 1, 0);

