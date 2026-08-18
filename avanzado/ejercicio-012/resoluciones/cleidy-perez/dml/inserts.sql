-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Canciones (titulo, artista, genero, duracion_segundos) VALUES
('Blinding Lights', 'The Weeknd', 'Synthpop', 200),
('Starboy', 'The Weeknd', 'R&B', 230),
('Bohemian Rhapsody', 'Queen', 'Rock', 354),
('Don\'t Stop Me Now', 'Queen', 'Rock', 209),
('Levitating', 'Dua Lipa', 'Pop', 203),
('Don\'t Start Now', 'Dua Lipa', 'Pop', 183),
('Hotel California', 'Eagles', 'Rock', 390),
('Shape of You', 'Ed Sheeran', 'Pop', 233),
('Bad Habits', 'Ed Sheeran', 'Pop', 231),
('Take On Me', 'a-ha', 'Synthpop', 225);

INSERT INTO PlaylistCanciones (cancion_id, nombre_playlist, orden_reproduccion, fecha_agregado) VALUES
(1, 'Gimnasio & Training', 1, '2026-01-10 08:00:00'),
(2, 'Gimnasio & Training', 2, '2026-01-10 08:03:00'),
(5, 'Gimnasio & Training', 3, '2026-01-10 08:07:00'),
(6, 'Gimnasio & Training', 4, '2026-01-10 08:10:00'),
(10, 'Gimnasio & Training', 5, '2026-01-10 08:13:00'),
(3, 'Clásicos del Rock', 1, '2026-02-01 14:00:00'),
(4, 'Clásicos del Rock', 2, '2026-02-01 14:06:00'),
(7, 'Clásicos del Rock', 3, '2026-02-01 14:10:00'),
(8, 'Éxitos Pop 2026', 1, '2026-03-15 19:30:00'),
(9, 'Éxitos Pop 2026', 2, '2026-03-15 19:34:00');