DROP DATABASE IF EXISTS db_paracaidismo_irma;
CREATE DATABASE db_paracaidismo_irma;
USE db_paracaidismo_irma;

CREATE TABLE saltos_paracaidismo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_alumnos_instructor VARCHAR(70) NOT NULL,
    tipo_salto VARCHAR(30) NOT NULL CHECK (tipo_salto IN ('Tandem', 'AFF', 'Solo', 'Brevet', 'Entrenamiento')),
    altura_pies INT NOT NULL CHECK (altura_pies >= 3000),
    costo_usd DECIMAL(10,2) NOT NULL CHECK (costo_usd > 0.00),
    estado_salto VARCHAR(20) NOT NULL DEFAULT 'Programado' CHECK (estado_salto IN ('Programado', 'Completado', 'Cancelado'))
);