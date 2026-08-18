USE campuslands_mysql;

DROP TABLE IF EXISTS autos;

CREATE TABLE autos (

    id_auto INT AUTO_INCREMENT PRIMARY KEY,

    marca VARCHAR(50) NOT NULL,

    modelo VARCHAR(60) NOT NULL,

    pais_origen VARCHAR(50) NOT NULL,

    anio YEAR NOT NULL,

    velocidad_maxima INT NOT NULL CHECK (velocidad_maxima > 0),

    potencia_hp INT NOT NULL CHECK (potencia_hp > 0),

    precio DECIMAL(12,2) NOT NULL CHECK (precio > 0),

    estado ENUM('Disponible','Reservado','Vendido') NOT NULL,

    fecha_fabricacion DATE NOT NULL

);

CREATE INDEX idx_marca
ON autos(marca);

CREATE INDEX idx_estado
ON autos(estado);

CREATE INDEX idx_velocidad
ON autos(velocidad_maxima);

CREATE INDEX idx_precio
ON autos(precio);