CREATE TABLE plataformas (
    plataforma_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_plataforma VARCHAR(50) NOT NULL UNIQUE,
    empresa_desarrolladora VARCHAR(50) NOT NULL,
    tipo_hardware VARCHAR(30) NOT NULL CHECK (tipo_hardware IN ('Consola', 'PC', 'Portátil', 'Nube'))
);

CREATE TABLE videojuegos (
    videojuego_id INT AUTO_INCREMENT PRIMARY KEY,
    plataforma_id INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL CHECK (genero IN ('Acción', 'RPG', 'Aventura', 'Estrategia', 'Deportes')),
    horas_jugadas INT NOT NULL DEFAULT 0 CHECK (horas_jugadas >= 0),
    precio_compra_usd DECIMAL(8,2) NOT NULL CHECK (precio_compra_usd >= 0.00),
    completado BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT fk_videojuegos_plataformas 
        FOREIGN KEY (plataforma_id) REFERENCES plataformas(plataforma_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
);