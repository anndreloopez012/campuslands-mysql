-- funcionalidades/ejercicio-011 - maria-montepeque
-- Tematica: paracaidismo
USE campuslands_mysql;

DROP VIEW IF EXISTS vista_paracaidistas_licencia_a;
DROP VIEW IF EXISTS vista_paracaidistas_activos;
DROP VIEW IF EXISTS vista_saltos_altos;
DROP VIEW IF EXISTS vista_resumen_paracaidistas;
DROP VIEW IF EXISTS vista_saltos_detalle;
DROP TABLE IF EXISTS saltos_paracaidismo;
DROP TABLE IF EXISTS paracaidistas;

CREATE TABLE paracaidistas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    licencia ENUM('A', 'B', 'C', 'D') NOT NULL,
    fecha_ingreso DATE NOT NULL
);

CREATE TABLE saltos_paracaidismo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paracaidista_id INT NOT NULL,
    fecha_salto DATE NOT NULL,
    zona VARCHAR(40) NOT NULL,
    altitud_metros INT NOT NULL,
    tiempo_caida_libre_seg INT NOT NULL,
    calificacion_instructor DECIMAL(3, 1) NOT NULL,
    CONSTRAINT fk_salto_paracaidista
        FOREIGN KEY (paracaidista_id) REFERENCES paracaidistas (id),
    CONSTRAINT chk_altitud_salto CHECK (altitud_metros > 0),
    CONSTRAINT chk_calificacion_salto CHECK (calificacion_instructor BETWEEN 0 AND 10)
);
