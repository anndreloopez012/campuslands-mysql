

INSERT INTO gimnasios_kickboxing (nombre_gimnasio, ciudad, pais) VALUES
('Hemmers Gym', 'Breda', 'Países Bajos'),
('Mike\'s Gym', 'Oostzaan', 'Países Bajos'),
('Mejiro Gym', 'Ámsterdam', 'Países Bajos');

INSERT INTO entrenadores_kickboxing (gimnasio_id, nombre_completo, especialidad, anios_experiencia) VALUES
(1, 'Nick Hemmers', 'K-1', 20),
(2, 'Mike Passenier', 'Low Kick', 25),
(3, 'Andre Mannaart', 'Full Contact', 30);

INSERT INTO peleadores_kickboxing (gimnasio_id, entrenador_id, nombre_completo, apodo, categoria_peso, victorias, derrotas, empates) VALUES
(1, 1, 'Rico Verhoeven', 'The King of Kickboxing', 'Pesado', 60, 10, 0),
(1, 1, 'Marat Grigorian', 'The Armenian Power', 'Súper Welter', 65, 12, 1),
(2, 2, 'Badr Hari', 'The Golden Boy', 'Pesado', 106, 17, 0),
(2, 2, 'Murthel Groenhart', 'The Predator', 'Semi Pesado', 69, 24, 3),
(3, 3, 'Remy Bonjasky', 'The Flying Gentleman', 'Pesado', 78, 12, 0);
