-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO usuarios (nombre_usuario, email) VALUES
('rocker_99', 'rocker99@email.com'),
('dj_mix', 'djmix@email.com');


INSERT INTO canciones (titulo, artista, genero, duracion_segundos) VALUES
('One More Time', 'Daft Punk', 'Electronic', 320),
('Get Lucky', 'Daft Punk', 'Funk / Disco', 248),
('Bohemian Rhapsody', 'Queen', 'Rock', 354),
('Don''t Stop Me Now', 'Queen', 'Rock', 209),
('Tití Me Preguntó', 'Bad Bunny', 'Reggaeton', 243);


INSERT INTO playlist_canciones (id_usuario, nombre_playlist, id_cancion, posicion) VALUES

(1, 'Clásicos del Rock', 3, 1), 
(1, 'Clásicos del Rock', 4, 2), 


(2, 'Fiesta Fin de Semana', 5, 1), 
(2, 'Fiesta Fin de Semana', 2, 2), 
(2, 'Fiesta Fin de Semana', 1, 3);