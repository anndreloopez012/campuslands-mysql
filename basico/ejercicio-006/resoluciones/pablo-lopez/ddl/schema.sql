DROP TABLE IF EXISTS autos_hiperdeportivos;

CREATE TABLE autos_hiperdeportivos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    pais VARCHAR(40) NOT NULL,
    velocidad_max INT NOT NULL,
    precio DECIMAL(12,2) NOT NULL CHECK(precio > 0),
    anio YEAR NOT NULL,
    estado ENUM('Disponible','Vendido','Reservado') NOT NULL
);