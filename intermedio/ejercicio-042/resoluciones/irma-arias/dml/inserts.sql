USE playlist_musical_db;

INSERT INTO artistas (nombre_artista, pais_origen) VALUES
('The Weeknd', 'Canadá'),
('Dua Lipa', 'Reino Unido'),
('Bad Bunny', 'Puerto Rico'),
('Daiki Kasho', 'Japón');

INSERT INTO playlists (nombre_playlist, descripcion) VALUES
('Éxitos Globales 2026', 'Las canciones más sonadas del momento a nivel mundial'),
('Workout Energy', 'Tracks de alta intensidad para entrenar y correr'),
('Late Night Drive', 'Música envolvente para recorridos nocturnos'),
('Focus & Code', 'Instrumentales y beats electrónicos para programar');

INSERT INTO canciones (titulo_cancion, duracion_segundos, reproducciones, id_artista, id_playlist, genero_musical, estado_cancion) VALUES
('Blinding Lights', 200, 1540000, 1, 1, 'Pop', 'disponible'),
('Levitating', 203, 1280000, 2, 1, 'Pop', 'disponible'),
('Tití Me Preguntó', 243, 2100000, 3, 2, 'Urban', 'explicit'),
('Survive', 310, 450000, 4, 2, 'Electronic', 'disponible'),
('Starboy', 230, 1890000, 1, 3, 'Pop', 'disponible'),
('Physical', 203, 920000, 2, 3, 'Pop', 'disponible'),
('Moscow Mule', 250, 1650000, 3, 1, 'Urban', 'explicit'),
('Good 2 Go', 285, 310000, 4, 4, 'Electronic', 'disponible');
