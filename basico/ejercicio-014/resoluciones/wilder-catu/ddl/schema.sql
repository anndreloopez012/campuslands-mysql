
USE campuslands_mysql;

DROP TABLE IF EXISTS saga_ciencia_ficcion;

CREATE TABLE saga_ciencia_ficcion (
    id_saga INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL,
    director VARCHAR(100) NOT NULL,
    universo VARCHAR(60) NOT NULL,
    fecha_estreno DATE NOT NULL,
    duracion_min INT NOT NULL CHECK (duracion_min > 0),
    recaudacion DECIMAL(12,2) NOT NULL CHECK (recaudacion >= 0),
    estado ENUM('Estrenada','Próximamente','Cancelada') NOT NULL DEFAULT 'Estrenada'
);