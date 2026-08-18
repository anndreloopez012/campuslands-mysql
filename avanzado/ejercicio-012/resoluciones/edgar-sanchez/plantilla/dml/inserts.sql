INSERT INTO artistas (nombre_artista, genero_principal, pais_origen) VALUES
('Daft Punk', 'Electronic', 'Francia'),
('The Weeknd', 'Synthwave / R&B', 'Canadá'),
('Dua Lipa', 'Pop', 'Reino Unido');

INSERT INTO albumes (artista_id, titulo_album, anio_lanzamiento) VALUES
(1, 'Discovery', 2001),
(1, 'Random Access Memories', 2013),
(2, 'After Hours', 2020),
(3, 'Future Nostalgia', 2020);

INSERT INTO canciones (album_id, titulo_cancion, duracion_segundos, reproducciones_totales) VALUES
(1, 'One More Time', 320, 850000),
(1, 'Harder, Better, Faster, Stronger', 224, 920000),
(2, 'Get Lucky', 248, 1200000),
(2, 'Instant Crush', 337, 780000),
(3, 'Blinding Lights', 200, 2100000),
(3, 'Save Your Tears', 215, 1650000),
(3, 'In Your Eyes', 237, 940000),
(4, 'Don''t Start Now', 183, 1850000),
(4, 'Levitating', 203, 1950000),
(4, 'Physical', 193, 1100000);

INSERT INTO playlists (nombre_playlist, usuario_propietario, fecha_creacion) VALUES
('Hits Electrónicos & Synth', 'edgar_admin', '2026-01-15'),
('Pop Essentials 2026', 'sofia_music', '2026-02-01');

INSERT INTO canciones_playlist (playlist_id, cancion_id, orden_reproduccion, fecha_agregado) VALUES
(1, 1, 1, '2026-01-15 10:00:00'),
(1, 2, 2, '2026-01-15 10:05:00'),
(1, 3, 3, '2026-01-16 11:20:00'),
(1, 5, 4, '2026-01-18 14:30:00'),
(1, 6, 5, '2026-01-20 09:15:00'),
(2, 5, 1, '2026-02-01 16:00:00'),
(2, 8, 2, '2026-02-01 16:05:00'),
(2, 9, 3, '2026-02-02 12:10:00'),
(2, 6, 4, '2026-02-05 18:45:00'),
(2, 10, 5, '2026-02-10 20:00:00');