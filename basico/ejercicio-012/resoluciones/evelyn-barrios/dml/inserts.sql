-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO canciones (titulo, artista, album, genero, duracion_segundos, reproducciones, fecha_lanzamiento, estado) VALUES
('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', 'Rock', 354, 1500000000, '1975-10-31', 'disponible'),
('Stairway to Heaven', 'Led Zeppelin', 'Led Zeppelin IV', 'Rock', 482, 1200000000, '1971-11-08', 'disponible'),
('Billie Jean', 'Michael Jackson', 'Thriller', 'Pop', 294, 1800000000, '1982-11-30', 'disponible'),
('Hotel California', 'Eagles', 'Hotel California', 'Rock', 390, 1000000000, '1976-12-08', 'disponible'),
('Smells Like Teen Spirit', 'Nirvana', 'Nevermind', 'Grunge', 301, 900000000, '1991-09-10', 'disponible'),
('Shape of You', 'Ed Sheeran', '÷ (Divide)', 'Pop', 233, 2500000000, '2017-01-06', 'disponible'),
('Blinding Lights', 'The Weeknd', 'After Hours', 'Synth-pop', 200, 2800000000, '2019-11-29', 'disponible'),
('Despacito', 'Luis Fonsi ft. Daddy Yankee', 'Vida', 'Latin Pop', 229, 7000000000, '2017-01-12', 'disponible'),
('Imagine', 'John Lennon', 'Imagine', 'Soft Rock', 187, 800000000, '1971-09-09', 'disponible'),
('Hallelujah', 'Leonard Cohen', 'Various Positions', 'Folk Rock', 266, 600000000, '1984-12-10', 'oculto'); -- Ejemplo de canción en estado 'oculto'
