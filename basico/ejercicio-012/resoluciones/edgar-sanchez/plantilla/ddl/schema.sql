CREATE TABLE playlist_canciones (
    cancion_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    artista VARCHAR(100) NOT NULL,
    album VARCHAR(100) NOT NULL DEFAULT 'Sencillo',
    genero VARCHAR(50) NOT NULL CHECK (genero IN ('Rock', 'Pop', 'Urban', 'Electrónica', 'Indie', 'Jazz', 'Clásica')),
    duracion_segundos INT NOT NULL CHECK (duracion_segundos BETWEEN 30 AND 1200),
    reproducciones INT NOT NULL DEFAULT 0 CHECK (reproducciones >= 0),
    es_favorita BOOLEAN NOT NULL DEFAULT FALSE,
    fecha_agregada DATE NOT NULL DEFAULT (CURRENT_DATE)
);