USE campuslands_mysql;

DROP TABLE IF EXISTS competidores_kickboxing;

CREATE TABLE competidores_kickboxing (
    id_competidor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    categoria VARCHAR(40) NOT NULL,
    peso DECIMAL(5,2) NOT NULL CHECK (peso > 0),
    victorias INT NOT NULL DEFAULT 0 CHECK (victorias >= 0),
    derrotas INT NOT NULL DEFAULT 0 CHECK (derrotas >= 0),
    estado ENUM('Activo','Suspendido','Retirado') NOT NULL DEFAULT 'Activo'
);