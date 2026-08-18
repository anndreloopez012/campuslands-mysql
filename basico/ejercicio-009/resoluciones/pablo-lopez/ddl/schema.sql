DROP TABLE IF EXISTS peleadores;

CREATE TABLE peleadores(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    victorias INT NOT NULL,
    derrotas INT NOT NULL,
    peso DECIMAL(5,2) NOT NULL,
    estado ENUM('Activo','Retirado') NOT NULL
);