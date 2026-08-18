-- funcionalidades/ejercicio-004 - maria-montepeque
-- Tematica: playlist musical
USE campuslands_mysql;

DROP TABLE IF EXISTS canciones_playlist;

CREATE TABLE canciones_playlist (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    artista VARCHAR(80) NOT NULL,
    genero VARCHAR(40) NOT NULL DEFAULT 'Sin genero',
    duracion_segundos SMALLINT NOT NULL,
    agregada_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_duracion_positiva CHECK (duracion_segundos > 0)
);
