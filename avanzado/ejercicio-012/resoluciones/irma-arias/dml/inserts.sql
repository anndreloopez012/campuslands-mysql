-- DML: Inserción de datos para la playlist musical
USE db_playlist_avanzado;

INSERT INTO canciones_playlist (codigo_cancion, titulo, artista, genero_musical, duracion_minutos, reproducciones, estado) VALUES
('SONG-01', 'Blinding Lights', 'The Weeknd', 'Synthwave', 3.20, 150000, 'favorita'),
('SONG-02', 'Levitating', 'Dua Lipa', 'Pop', 3.23, 120000, 'activa'),
('SONG-03', 'Starboy', 'The Weeknd', 'R&B', 3.50, 95000, 'activa'),
('SONG-04', 'As It Was', 'Harry Styles', 'Indie Pop', 2.47, 110000, 'favorita'),
('SONG-05', 'Titanium', 'David Guetta', 'EDM', 4.05, 80000, 'pausada'),
('SONG-06', 'Calm Down', 'Rema', 'Afrobeats', 3.59, 87000, 'activa'),
('SONG-07', 'Bad Guy', 'Billie Eilish', 'Alternative', 3.14, 92000, 'archivada'),
('SONG-08', 'Shape of You', 'Ed Sheeran', 'Pop', 3.53, 200000, 'favorita');