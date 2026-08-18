DROP TABLE IF EXISTS canciones_playlist;
DROP TABLE IF EXISTS playlists;
DROP TABLE IF EXISTS canciones;
DROP TABLE IF EXISTS albumes;
DROP TABLE IF EXISTS artistas;

CREATE TABLE artistas (
    artista_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_artista VARCHAR(100) NOT NULL UNIQUE,
    genero_principal VARCHAR(50) NOT NULL,
    pais_origen VARCHAR(50) NOT NULL
);

CREATE TABLE albumes (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    artista_id INT NOT NULL,
    titulo_album VARCHAR(100) NOT NULL,
    anio_lanzamiento INT NOT NULL CONSTRAINT chk_anio_album CHECK (anio_lanzamiento BETWEEN 1950 AND 2026),
    CONSTRAINT fk_albumes_artistas 
        FOREIGN KEY (artista_id) REFERENCES artistas(artista_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT uq_artista_album 
        UNIQUE (artista_id, titulo_album)
);

CREATE TABLE canciones (
    cancion_id INT AUTO_INCREMENT PRIMARY KEY,
    album_id INT NOT NULL,
    titulo_cancion VARCHAR(100) NOT NULL,
    duracion_segundos INT NOT NULL CONSTRAINT chk_duracion_cancion CHECK (duracion_segundos > 0),
    reproducciones_totales INT NOT NULL DEFAULT 0 CONSTRAINT chk_reproducciones CHECK (reproducciones_totales >= 0),
    CONSTRAINT fk_canciones_albumes 
        FOREIGN KEY (album_id) REFERENCES albumes(album_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT uq_album_cancion 
        UNIQUE (album_id, titulo_cancion)
);

CREATE TABLE playlists (
    playlist_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_playlist VARCHAR(100) NOT NULL UNIQUE,
    usuario_propietario VARCHAR(100) NOT NULL,
    fecha_creacion DATE NOT NULL
);

CREATE TABLE canciones_playlist (
    playlist_id INT NOT NULL,
    cancion_id INT NOT NULL,
    orden_reproduccion INT NOT NULL CONSTRAINT chk_orden CHECK (orden_reproduccion > 0),
    fecha_agregado DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (playlist_id, cancion_id),
    CONSTRAINT fk_cp_playlists 
        FOREIGN KEY (playlist_id) REFERENCES playlists(playlist_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_cp_canciones 
        FOREIGN KEY (cancion_id) REFERENCES canciones(cancion_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT uq_playlist_orden 
        UNIQUE (playlist_id, orden_reproduccion)
);