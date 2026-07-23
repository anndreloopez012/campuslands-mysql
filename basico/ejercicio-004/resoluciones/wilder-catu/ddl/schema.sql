USE campuslands_mysql;

CREATE TABLE motos (
    id_moto INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(10),
    marca VARCHAR(40),
    modelo VARCHAR(50),
    categoria VARCHAR(30),
    anio INT,
    precio DECIMAL(10,2),
    kilometraje INT,
    disponible BOOLEAN
);