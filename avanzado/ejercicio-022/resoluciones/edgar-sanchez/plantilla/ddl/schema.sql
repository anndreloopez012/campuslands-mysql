DROP TABLE IF EXISTS render_frames;
DROP TABLE IF EXISTS animaciones_assets;
DROP TABLE IF EXISTS escenas_3d;
DROP TABLE IF EXISTS proyectos_animacion;
DROP TABLE IF EXISTS artistas_3d;

CREATE TABLE artistas_3d (
    artista_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_artista VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE proyectos_animacion (
    proyecto_id INT AUTO_INCREMENT PRIMARY KEY,
    director_id INT NOT NULL,
    nombre_proyecto VARCHAR(120) NOT NULL UNIQUE,
    fps INT NOT NULL DEFAULT 24 CONSTRAINT chk_fps CHECK (fps IN (24, 30, 60)),
    resolucion_target VARCHAR(20) NOT NULL DEFAULT '1920x1080',
    estado_proyecto VARCHAR(30) NOT NULL DEFAULT 'En Producción' CONSTRAINT chk_estado_prod CHECK (estado_proyecto IN ('Preproducción', 'En Producción', 'Renderizado', 'Completado')),
    CONSTRAINT fk_proyectos_artistas 
        FOREIGN KEY (director_id) REFERENCES artistas_3d(artista_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE escenas_3d (
    escena_id INT AUTO_INCREMENT PRIMARY KEY,
    proyecto_id INT NOT NULL,
    numero_escena INT NOT NULL CONSTRAINT chk_num_escena CHECK (numero_escena > 0),
    nombre_escena VARCHAR(100) NOT NULL,
    duracion_frames INT NOT NULL CONSTRAINT chk_duracion_frames CHECK (duracion_frames > 0),
    complejidad VARCHAR(20) NOT NULL CONSTRAINT chk_complejidad CHECK (complejidad IN ('Baja', 'Media', 'Alta', 'Extrema')),
    CONSTRAINT fk_escenas_proyectos 
        FOREIGN KEY (proyecto_id) REFERENCES proyectos_animacion(proyecto_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_proyecto_escena 
        UNIQUE (proyecto_id, numero_escena)
);

CREATE TABLE animaciones_assets (
    asset_id INT AUTO_INCREMENT PRIMARY KEY,
    escena_id INT NOT NULL,
    artista_asignado_id INT NOT NULL,
    nombre_asset VARCHAR(100) NOT NULL,
    tipo_asset VARCHAR(50) NOT NULL CONSTRAINT chk_tipo_asset CHECK (tipo_asset IN ('Personaje', 'Escenario', 'Prop', 'Efecto VFX', 'Rigging')),
    poligono_count INT NOT NULL CONSTRAINT chk_poligono_count CHECK (poligono_count > 0),
    CONSTRAINT fk_assets_escenas 
        FOREIGN KEY (escena_id) REFERENCES escenas_3d(escena_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_assets_artistas 
        FOREIGN KEY (artista_asignado_id) REFERENCES artistas_3d(artista_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE render_frames (
    render_id INT AUTO_INCREMENT PRIMARY KEY,
    escena_id INT NOT NULL,
    frame_numero INT NOT NULL CONSTRAINT chk_frame_num CHECK (frame_numero > 0),
    tiempo_render_segundos DECIMAL(8,2) NOT NULL CONSTRAINT chk_tiempo_render CHECK (tiempo_render_segundos > 0.00),
    ram_usada_gb DECIMAL(5,2) NOT NULL CONSTRAINT chk_ram CHECK (ram_usada_gb > 0.00),
    estado_frame VARCHAR(20) NOT NULL DEFAULT 'Completado' CONSTRAINT chk_estado_frame CHECK (estado_frame IN ('Completado', 'Error', 'En Cola')),
    CONSTRAINT fk_render_escenas 
        FOREIGN KEY (escena_id) REFERENCES escenas_3d(escena_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_escena_frame 
        UNIQUE (escena_id, frame_numero)
);