-- funcionalidades/ejercicio-004 - maria-montepeque
-- Playlist "Temporada 1": no se indica id, MySQL lo asigna solo (1, 2, 3, ...).
USE campuslands_mysql;

INSERT INTO canciones_playlist
    (titulo, artista, genero, duracion_segundos)
VALUES
    ('Luces de Neon', 'Aurora Vega', 'Synthpop', 214),
    ('Rumbo al Sur', 'Los Cardenales', 'Cumbia', 198),
    ('Marea Baja', 'Sofia Duarte', 'Pop', 231),
    ('Codigo Abierto', 'Byte Beat', 'Electronica', 245),
    ('Ultimo Tren', 'Renata Solis', 'Indie', 202),
    ('Fuego Lento', 'Marco Reyes', 'Reggaeton', 189),
    ('Cielo de Octubre', 'Aurora Vega', 'Synthpop', 220),
    ('Sin Frenos', 'Los Cardenales', 'Cumbia', 176);
