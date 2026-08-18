

INSERT INTO gimnasios_kickboxing (nombre_gimnasio, ciudad, pais) VALUES
('Hemmers Gym', 'Breda', 'Países Bajos'),
('Mike\'s Gym', 'Oostzaan', 'Países Bajos'),
('Mejiro Gym', 'Ámsterdam', 'Países Bajos');

INSERT INTO peleadores_kickboxing (gimnasio_id, nombre_completo, categoria_peso, victorias, derrotas, empates, puntos_ranking) VALUES
(1, 'Rico Verhoeven', 'Pesado', 60, 10, 0, 1200),
(1, 'Marat Grigorian', 'Súper Welter', 65, 12, 1, 980),
(2, 'Badr Hari', 'Pesado', 106, 17, 0, 1150),
(2, 'Murthel Groenhart', 'Semi Pesado', 69, 24, 3, 850),
(3, 'Remy Bonjasky', 'Pesado', 78, 12, 0, 1050);

INSERT INTO combates_fase_eliminatoria (peleador_1_id, peleador_2_id, ganador_id, fase, estado, fecha_combate) VALUES
(1, 3, NULL, 'Final', 'Programado', '2026-08-15'),
(2, 4, 2, 'Semifinal', 'Finalizado', '2026-06-10');
