
USE campuslands_mysql;

DROP TABLE IF EXISTS playlist_musical;

CREATE TABLE playlist_musical (
    id_cancion INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    artista VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    duracion_segundos INT NOT NULL CHECK (duracion_segundos > 0),
    reproducciones INT NOT NULL DEFAULT 0 CHECK (reproducciones >= 0),
    fecha_agregada DATE NOT NULL,
    estado ENUM('Activa','Eliminada') NOT NULL DEFAULT 'Activa'
);