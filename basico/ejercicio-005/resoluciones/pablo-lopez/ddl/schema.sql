DROP TABLE IF EXISTS reparaciones;

CREATE TABLE reparaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente VARCHAR(60) NOT NULL,
    moto VARCHAR(60) NOT NULL,
    servicio VARCHAR(80) NOT NULL,
    costo DECIMAL(8,2) NOT NULL CHECK(costo > 0),
    fecha DATE NOT NULL,
    estado ENUM('Pendiente','En proceso','Finalizado') NOT NULL
);