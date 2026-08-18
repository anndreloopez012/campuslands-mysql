
INSERT INTO estadios (nombre_estadio, ciudad, capacidad) VALUES
('Estadio Metropolitano', 'Madrid', 68456),
('San Mamés', 'Bilbao', 53331),
('Estadio Ramón Sánchez-Pizjuán', 'Sevilla', 43883),
('Estadio de Mestalla', 'Valencia', 49430);

INSERT INTO equipos (estadio_id, nombre_equipo, fundacion_anio) VALUES
(1, 'Atlético Capital', 1903),
(2, 'Deportivo del Norte', 1898),
(3, 'Sporting Sur', 1890),
(4, 'Valencia F.C.', 1919);

INSERT INTO partidos (equipo_local_id, equipo_visitante_id, goles_local, goles_visitante, fecha_partido, jornada) VALUES
(1, 2, 2, 1, '2026-02-10', 1),
(3, 4, 0, 0, '2026-02-11', 1),
(2, 3, 3, 1, '2026-02-17', 2),
(4, 1, 1, 2, '2026-02-18', 2);
