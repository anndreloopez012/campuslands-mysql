DROP TABLE IF EXISTS motos;

CREATE TABLE motos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    color VARCHAR(30) NOT NULL,
    cilindrada INT NOT NULL CHECK (cilindrada > 0),
    precio DECIMAL(10,2) NOT NULL CHECK (precio > 0),
    fecha_ingreso DATE NOT NULL,
    estado ENUM('Disponible','En reparación','Vendida') NOT NULL
);