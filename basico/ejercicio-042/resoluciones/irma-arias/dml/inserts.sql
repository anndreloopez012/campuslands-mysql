USE db_playlist_musical;

-- Inserción de mínimo 8 registros variados de canciones para la playlist
INSERT INTO canciones_playlist (titulo_cancion, artista, genero, duracion_segundos, reproducciones, estado, fecha_agregada) VALUES
('Blinding Lights', 'The Weeknd', 'Pop', 200, 15400, 'favorita', '2026-05-01'),
('Bohemian Rhapsody', 'Queen', 'Rock', 354, 28900, 'favorita', '2026-05-02'),
('Get Lucky', 'Daft Punk', 'Electronic', 248, 9200, 'activa', '2026-05-10'),
('Lose Yourself', 'Eminem', 'Hip-Hop', 326, 18400, 'activa', '2026-05-12'),
('Take Five', 'Dave Brubeck', 'Jazz', 324, 4100, 'archivada', '2026-05-15'),
('Levitating', 'Dua Lipa', 'Pop', 203, 12600, 'activa', '2026-06-01'),
('Smells Like Teen Spirit', 'Nirvana', 'Rock', 301, 21500, 'favorita', '2026-06-05'),
('Strobe', 'Deadmau5', 'Electronic', 637, 6800, 'activa', '2026-06-10');