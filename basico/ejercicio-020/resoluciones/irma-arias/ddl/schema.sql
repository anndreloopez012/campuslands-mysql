DROP DATABASE IF EXISTS db_estudio_tatuajes_irma;
CREATE DATABASE db_estudio_tatuajes_irma;
USE db_estudio_tatuajes_irma;

CREATE TABLE citas_tatuajes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente VARCHAR(70) NOT NULL,
    estilo_tatuaje VARCHAR(30) NOT NULL CHECK (estilo_tatuaje IN ('Realismo', 'Tradicional', 'NeoTradicional', 'Blackwork', 'Minimalista', 'Japones')),
    duracion_horas INT NOT NULL CHECK (duracion_horas > 0),
    costo_usd DECIMAL(10,2) NOT NULL CHECK (costo_usd > 0.00),
    estado_cita VARCHAR(20) NOT NULL DEFAULT 'Completada' CHECK (estado_cita IN ('Completada', 'Programada', 'Cancelada'))
);