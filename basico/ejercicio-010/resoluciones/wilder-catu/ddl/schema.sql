USE campuslands_mysql;

DROP TABLE IF EXISTS carreras_urbanas;

CREATE TABLE carreras_urbanas (
    id_corredor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    ciudad VARCHAR(60) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    distancia_km DECIMAL(5,2) NOT NULL CHECK (distancia_km > 0),
    tiempo_min INT NOT NULL CHECK (tiempo_min > 0),
    premio DECIMAL(10,2) NOT NULL DEFAULT 0 CHECK (premio >= 0),
    estado ENUM('Finalizada','Abandonó') NOT NULL DEFAULT 'Finalizada'
);