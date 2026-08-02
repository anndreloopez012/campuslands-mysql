DROP DATABASE IF EXISTS playlist_musical_db;
CREATE DATABASE playlist_musical_db;
USE playlist_musical_db;

CREATE TABLE artistas (
    id_artista INT AUTO_INCREMENT PRIMARY KEY,
    nombre_artista VARCHAR(60) NOT NULL,
    pais_origen VARCHAR(40) NOT NULL
);

CREATE TABLE playlists (
    id_playlist INT AUTO_INCREMENT PRIMARY KEY,
    nombre_playlist VARCHAR(60) NOT NULL,
    descripcion VARCHAR(120) NOT NULL
);

CREATE TABLE canciones (
    id_cancion INT AUTO_INCREMENT PRIMARY KEY,
    titulo_cancion VARCHAR(80) NOT NULL,
    duracion_segundos INT UNSIGNED CHECK (duracion_segundos BETWEEN 30 AND 3600),
    reproducciones INT UNSIGNED DEFAULT 0,
    id_artista INT NOT NULL,
    id_playlist INT NOT NULL,
    genero_musical ENUM('Pop', 'Rock', 'Urban', 'Electronic', 'Jazz', 'Classical', 'Salsa') NOT NULL,
    estado_cancion ENUM('disponible', 'exclusiva', 'explicit', 'archivada') DEFAULT 'disponible',
    FOREIGN KEY (id_artista) REFERENCES artistas(id_artista) ON DELETE CASCADE,
    FOREIGN KEY (id_playlist) REFERENCES playlists(id_playlist) ON DELETE CASCADE
);
