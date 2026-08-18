-- Datos de practica para playlist musical enfocada en reportes de consumo.
USE campuslands_mysql;

INSERT INTO intermedio_ejercicio_012_canciones (titulo, artista, genero, anio_lanzamiento) 
    VALUES ('Scream & Shout', 'will.i.am ft. Britney Spears', 'Electropop', 2012),
    ('I Like It', 'Cardi B, Bad Bunny, J Balvin', 'Latin Trap', 2018),
    ('Wicked Game', 'Chris Isaak', 'Rock Alternativo', 1989),
    ('Mi Gente', 'J Balvin, Willy William', 'Reggaeton', 2017),
    ('Titanium', 'David Guetta ft. Sia', 'EDM', 2011),
    ('Wake Me Up', 'Avicii', 'EDM', 2013),
    ('Animals', 'Martin Garrix', 'Electro House', 2013),
    ('Blinding Lights', 'The Weeknd', 'Synth-pop', 2019),
    ('La Cancion', 'J Balvin, Bad Bunny', 'Reggaeton', 2019),
    ('One More Time', 'Daft Punk', 'French House', 2000);

-- Simulacion de un historial de reproducciones (streams) diarios por plataforma
INSERT INTO intermedio_ejercicio_012_reproducciones (cancion_id, fecha_registro, streams_totales, plataforma) 
    VALUES (1, '2026-08-01', 15000, 'Spotify'),
    (1, '2026-08-01', 5000, 'Apple Music'),
    (2, '2026-08-01', 25000, 'Spotify'),
    (3, '2026-08-01', 8000, 'Spotify'),
    (4, '2026-08-01', 18000, 'Spotify'),
    (5, '2026-08-01', 22000, 'Spotify'),
    (6, '2026-08-01', 30000, 'Spotify'),
    (7, '2026-08-01', 12000, 'Apple Music'),
    (8, '2026-08-01', 40000, 'Spotify'),
    (9, '2026-08-01', 20000, 'Apple Music'),
    (1, '2026-08-02', 16000, 'Spotify'),
    (2, '2026-08-02', 26000, 'Spotify'),
    (3, '2026-08-02', 8500, 'Spotify'),
    (5, '2026-08-02', 23000, 'Apple Music'),
    (10, '2026-08-02', 11000, 'Spotify');