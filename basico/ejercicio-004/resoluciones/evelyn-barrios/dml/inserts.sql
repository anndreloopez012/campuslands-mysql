-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- Archivo: dml/inserts.sql
-- Archivo: dml/inserts.sql
-- Descripción: Inserción de datos de ejemplo para la plataforma de streaming de música.

USE music_streaming;

-- Inserción de artistas
INSERT INTO artistas (nombre_artista, pais_origen) VALUES
('Daft Punk', 'Francia'),
('Queen', 'Reino Unido'),
('Soda Stereo', 'Argentina'),
('Michael Jackson', 'Estados Unidos');

-- Inserción de géneros
INSERT INTO generos (nombre_genero) VALUES
('Electronic'),
('Rock'),
('Pop'),
('Rock en Español');

-- Inserción de álbumes
INSERT INTO albumes (titulo_album, id_artista, id_genero, anio_lanzamiento) VALUES
('Discovery', 1, 1, 2001),
('Random Access Memories', 1, 1, 2013),
('A Night at the Opera', 2, 2, 1975),
('Signos', 3, 4, 1986),
('Thriller', 4, 3, 1982);

-- Inserción de canciones
-- Canciones de Discovery (Álbum 1)
INSERT INTO canciones (titulo_cancion, id_album, duracion_segundos, reproducciones) VALUES
('One More Time', 1, 320, 1500000),
('Aerodynamic', 1, 207, 800000),
('Digital Love', 1, 301, 1200000);

-- Canciones de Random Access Memories (Álbum 2)
INSERT INTO canciones (titulo_cancion, id_album, duracion_segundos, reproducciones) VALUES
('Get Lucky', 2, 369, 2500000),
('Instant Crush', 2, 337, 1800000);

-- Canciones de A Night at the Opera (Álbum 3)
INSERT INTO canciones (titulo_cancion, id_album, duracion_segundos, reproducciones) VALUES
('Bohemian Rhapsody', 3, 355, 5000000);

-- Canciones de Signos (Álbum 4)
INSERT INTO canciones (titulo_cancion, id_album, duracion_segundos, reproducciones) VALUES
('Prófugos', 4, 317, 3000000),
('Signos', 4, 316, 2000000);

-- Canciones de Thriller (Álbum 5)
INSERT INTO canciones (titulo_cancion, id_album, duracion_segundos, reproducciones) VALUES
('Billie Jean', 5, 294, 7000000),
('Beat It', 5, 258, 6500000);
