USE campuslands_mysql;

CREATE TABLE servicios_motos (
    id_servicio INT PRIMARY KEY AUTO_INCREMENT,
    cliente VARCHAR(80),
    placa VARCHAR(10),
    marca VARCHAR(40),
    tipo_servicio VARCHAR(40),
    estado VARCHAR(30),
    costo DECIMAL(10,2),
    fecha_ingreso DATE
);